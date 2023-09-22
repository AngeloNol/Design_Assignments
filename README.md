# UNLV CpE 403 Advanced Embedded Systems Design

# OverView
* Hardware and software for embedded systems using 32-bit microcontrollers. High-level language programming, simulation and debugging. RTOS for embedded systems.
* implemented design assignment Code Composer  Studio, written in C

# Components
Software:
*  Code Composer  Studio
Hardware:
* Tiva C Series TM4C123G LaunchPad
* CC1352R wireless MCU LaunchPad Kit
* CC1352R wireless MCU LaunchPad SensorTag Kit
* USB Logic Analyzer
* MPU-6050


# Design Assignments
* DA0 - Do blinky tutorial from TI Code Composer Studio on the TM4C123G LaunchPad 

* DA1 - TM4C123G LaunchPad
      * Task 01: a) Continuously display the X and Y axis values of the joystick on the terminal using a
    timer interrupt every 1 sec, b) Using PF1 button interrupt toggle RGB LEDs in a sequence (all
    LEDs are off - Button press, R-on, Button press, G-on, Button press, B-on, Button press, all LEDs
    off. (PS: your program will have two interrupts)
    * Task 02: Continue with Task 01, implement the ADC-memory transfer and memory-UART
    transfer using uDMA. 
   

 * DA2 - TTM4C123G LaunchPad
       * Task 01: Interface the MPU6050 IMU Sensor (I2C). Determine the orientation of the object in
    Euler angles (yaw, pitch, roll). Perform all computations using IQMath Structures and Functions.
    Display the results in the terminal or as a waveform.
   

 * DA3 - TTM4C123G LaunchPad
           * Goal of this assignment is to create four tasks, 1) ADC task, 2) UART display task, 3) Switch
    Read task, and 4) Heartbeat function (PF3). The heartbeat function is performed throughout the
    execution of the program. Each task will be executed in order specified above every 15 ms. Connect a potentiometer/joystick (one axis) to the ADC pin. Use ADC0 CH4. Also initialize a PWM
    signal to a LED (PF1). Initial value of the PWM duty cycle is set to 0. Create a timer 0/1/2 HWI
    for every 1 ms, at 5th instance of HWI the task ADC is performed, at 10th instance of HWI the
    task UART displays the current value ADC in the terminal, and at 15th instance of HWI the task
    Switch Read is performed to check the status of the SW1/SW2 to update the current value of duty
    cycle based on the ADC value. Note that the duty cycle of the PWM does not change unless the
    switch is pressed, even when the ADC value changes. However, the UART should display the
    dynamic value of the ADC.

 * DA4 - CC1352 TIRTOS
          * Goal of this assignment is to create four tasks, 1) ADC task (AD0), 2) UART display task, 3) PWM
    task (DIO7), and 4) Heartbeat function (RED LED/DIO6). The project should use the joystick with
    the CC1352 Launchpad. The heartbeat function is performed throughout the execution of the program. Each task will be executed in order specified above every 15 ms. Connect the Joystick xaxis to the ADC pin A0. Also initialize a PWM signal to the GREEN LED (DIO7). Initial value of
    the PWM duty cycle is set to 0. Create a timer 0/1/2 timerCallback for every 1 ms, at 5th instance of timerCallback the task ADC is performed, at 10th instance of timerCallback the task
    UART displays the current value ADC in the terminal, and at 15th instance of timerCallback the
    update the current value of duty cycle of the PWM signal based on the ADC value. Note that the
    duty cycle of the PWM and UART adc value reflects dynamic the value of the ADC. Use semaphores to switch between the tasks during the respective

* DA5 - CC1352 TIRTOS
        * Task 1: Goal of this assignment is to create a custom BLE profile to transmit any sensor data to a
    generic BLE app in Android or iPhone or BTool. A recommended BLE app is LightBlue by
    PunchThrough or BTool. The video should clearly demonstrate the BLE connectivity, services
    advertised, and data update on the BLE app. You could use the CC1352R1LP or CC1352R1STK
    for this assignment. To accomplish this the student are required to complete the following sections under Bluethooth 5 folder in resource explorer (SimpleLink CC13xx CC26xx SDK
    (5.30.01.01) & SimpleLink Academy for CC13xx CC26xx (5.30.01.00)).
    1. Bluetooth Low Energy Fundamentals
    2. Bluetooth Low Energy Scanning and Advertising
    3. Bluetooth low energy Custom Profile
    * Task 2: This task builds on top of Task 1. The goal of this task is to interface an actual analog
    sensor (joystick). To start import, compile and execute the multi_sensor example under the Bluetooth 5 folder in resource explorer. You should use CC1352R1STK for this task. Some sensors
    will fail to initialize for SDK version 5.30.01, this is a known bug in the library. Remove the following services Temperature Service, Humidity Service, Light Service, Battery Service, and Accelerometer Service. Modify the Hall Service (uses ADC) to transmit the joystick ADC value to
    the host system. Verify your result.

* DA6 - CC1352 TIRTOS
        * Task 1: Goal of this assignment is to complete the following sections in the resource explorer.
    You should use the CC1352R1LP and CC1352R1STK for this assignment and should work in
    pairs. To accomplish this the student are required to complete the following sections under TI
    15.4 – Stack folder in resource explorer (SimpleLink CC13xx CC26xx SDK (5.30.01.01) & SimpleLink Academy for CC13xx CC26xx (5.30.01.00)).
    1. LPSTK TI 15.4-Stack
    2. Sensor and Collector - TI 15.4-Stack Project Zero
    3. Using TI 15.4-Stack and portable app to create a remote sensor
    4. TI 15.4-Stack - Adding a New Sensor 

# Student Info
* Student Name: Angelo Nolasco
* Student Email: Nolasco@unlv.nevada.edu
* youtube link DAs: https://www.youtube.com/playlist?list=PLQKv7ukC_ZvYcFStIp1kRduyU2kAJF1MJ



