/*
 * Copyright (c) 2015-2019, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 *  ======== mutex.c ========
 */

/* XDC module Headers */
#include <xdc/std.h>
#include <xdc/runtime/System.h>

/* BIOS module Headers */
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Semaphore.h>
#include <ti/drivers/GPIO.h>

#include <ti/drivers/Board.h>

#include <unistd.h>
#include <stdint.h>
#include <stddef.h>

/* POSIX Header files */
#include <pthread.h>

/* Driver Header files */
#include <ti/drivers/ADC.h>
#include <ti/display/Display.h>

/* Driver configuration */
#include "ti_drivers_config.h"

/* For usleep() */
#include <unistd.h>
#include <stddef.h>

/* Driver Header files */
#include <ti/drivers/PWM.h>

#define ADC_SAMPLE_COUNT  (10)

/* ADC conversion result variables */
uint16_t adcValue0;
int_fast16_t res;//ADC


static Display_Handle display;


#define TASKSTACKSIZE   512

Void task1Fxn(UArg arg0, UArg arg1);
Void task2Fxn(UArg arg0, UArg arg1);
Void task3Fxn(UArg arg0, UArg arg1);
Void heartBeatFxn(UArg arg0, UArg arg1);

Int resource = 0;
UInt32 sleepTickCount;

//PWM
uint16_t   pwmPeriod = 3000;
uint16_t   duty = 0;


Task_Struct task1Struct, task2Struct,task3Struct;
Char task1Stack[TASKSTACKSIZE], task2Stack[TASKSTACKSIZE],task3Stack[TASKSTACKSIZE];
Semaphore_Struct semStruct;
Semaphore_Handle semHandle;
PWM_Handle pwm1 = NULL;

/*
 *  ======== main ========
 */
int main()
{

    /* Construct BIOS objects */
    Task_Params taskParams;
    Semaphore_Params semParams;
    PWM_Params params;


    /* Call driver init functions */
    Board_init();
    ADC_init();
    Display_init();
    PWM_init();
    GPIO_init();

    //PWM
    PWM_Params_init(&params);
    params.dutyUnits = PWM_DUTY_US;
    params.dutyValue = 0;
    params.periodUnits = PWM_PERIOD_US;
    params.periodValue = pwmPeriod;
    pwm1 = PWM_open(CONFIG_PWM_0, &params);

    if (pwm1 == NULL) {
         /* CONFIG_PWM_0 did not open */
         while (1);
     }

    //HeartBeat
    /* Configure the LED pin */
        GPIO_setConfig(REDLED, GPIO_CFG_OUT_STD | GPIO_CFG_OUT_LOW);

      /* Turn on user LED */
      GPIO_write(REDLED, CONFIG_GPIO_LED_ON);

    /* Open the display for output */
    display = Display_open(Display_Type_UART, NULL);
    if (display == NULL) {
        /* Failed to open display driver */
        while (1);
    }

    /* Construct writer/reader Task threads */
    Task_Params_init(&taskParams);
    taskParams.stackSize = TASKSTACKSIZE;
    taskParams.stack = &task1Stack;
    taskParams.priority = 1;
    Task_construct(&task1Struct, (Task_FuncPtr)task1Fxn, &taskParams, NULL);

    taskParams.stack = &task2Stack;
    taskParams.priority = 2;
    Task_construct(&task2Struct, (Task_FuncPtr)task2Fxn, &taskParams, NULL);

    taskParams.stack = &task3Stack;
    taskParams.priority = 3;
    Task_construct(&task3Struct, (Task_FuncPtr)task3Fxn, &taskParams, NULL);

    PWM_start(pwm1);

    /* Construct a Semaphore object to be use as a resource lock, inital count 1 */
    Semaphore_Params_init(&semParams);
    Semaphore_construct(&semStruct, 1, &semParams);

    /* Obtain instance handle */
    semHandle = Semaphore_handle(&semStruct);


    /* We want to sleep for 10000 microseconds */
    sleepTickCount = 1000000 / Clock_tickPeriod;

    BIOS_start();    /* Does not return */






    return(0);
}

/*
 *  ======== task1Fxn ========
 */
//ADC Task
Void task1Fxn(UArg arg0, UArg arg1)
{
    //UInt32 time;
    ADC_Handle   adc;
    ADC_Params   params;


    ADC_Params_init(&params);
    adc = ADC_open(CONFIG_ADC_0, &params);


    for (;;) {
        System_printf("Running task1 function\n");

        if (Semaphore_getCount(semHandle) == 0) {
            System_printf("Sem blocked in task1\n");
        }

        /* Get access to resource */
        Semaphore_pend(semHandle, BIOS_WAIT_FOREVER);



        if (adc == NULL) {
            Display_printf(display, 0, 0, "Error initializing CONFIG_ADC_0\n");
            while (1);
        }

        /* Blocking mode conversion */
           res = ADC_convert(adc, &adcValue0);

           ADC_close(adc);

           resource += 1;

        /* Unlock resource */

        Semaphore_post(semHandle);


        Task_sleep(sleepTickCount);
    }

}

/*
 *  ======== task2Fxn ========
 */
//UART
Void task2Fxn(UArg arg0, UArg arg1)
{
    for (;;) {
        System_printf("Running task2 function\n");

        if (Semaphore_getCount(semHandle) == 0) {
            System_printf("Sem blocked in task2\n");
        }

        /* Get access to resource */
        Semaphore_pend(semHandle, BIOS_WAIT_FOREVER);

        if (res == ADC_STATUS_SUCCESS) {


            Display_printf(display, 0, 0, "X raw result: %d\n", adcValue0);

        }
        else {
            Display_printf(display, 0, 0, "CONFIG_ADC_0 convert failed\n");
        }


        /* Do work on locked resource */
        resource += 1;
        /* Unlock resource */


         Semaphore_post(semHandle);


        Task_sleep(sleepTickCount);



    }
}

/*
 *  ======== task3Fxn ========
 */
//PWM
Void task3Fxn(UArg arg0, UArg arg1)
{


    for (;;) {
        System_printf("Running task2 function\n");

        if (Semaphore_getCount(semHandle) == 15) {
            System_printf("Sem blocked in task3\n");
        }

        /* Get access to resource */
        Semaphore_pend(semHandle, BIOS_WAIT_FOREVER);
        PWM_setDuty(pwm1, duty);

        if(adcValue0 < 1570){
            duty = adcValue0;
            if (duty < 1)
            {
                duty = 1;

            }
        }

        if(adcValue0 > 1570){
            duty = adcValue0;
            if (duty > 100)
            {
                duty = 100;

            }
        }


        /* Do work on locked resource */
        resource += 1;
        /* Unlock resource */

        Semaphore_post(semHandle);

        Task_sleep(sleepTickCount);



    }
}

/*
 *  ======== heartBeatFxn ========
 */

Void heartBeatFxn(UArg arg0, UArg arg1)
{

    while(1){
           Task_sleep(10000);
           GPIO_toggle(REDLED);
       }



}


