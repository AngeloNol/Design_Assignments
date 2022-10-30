/*
 * i2c.h
 *
 *  Created on: Oct 25, 2022
 *      Author: Nolas
 */

#ifndef I2C_H_
#define I2C_H_

void initI2C(void);
void readI2C(uint8_t slave_addr, uint8_t reg, int *data);
void writeI2C(uint8_t slave_addr, uint8_t reg, uint8_t data);



#endif /* I2C_H_ */
