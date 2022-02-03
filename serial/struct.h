/*
 * struct.h
 *
 *  Created on: 8 Jun 2018
 *      Author: ph.stanek
 */

#ifndef STRUCT_H_
#define STRUCT_H_

typedef struct
{
      char        	dataIn[5];
      unsigned int  lengthIn;
      char          dataOut[5];
      unsigned int  lengthOut;
} s_TEST_COM;

enum bus_state {READY, BUSY, KO, RESET};
extern int disable_watchdog(int param);
extern void check_memory(void);
extern int enable_watchdog(int param);

#endif /* STRUCT_H_ */
