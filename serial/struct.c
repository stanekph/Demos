/*
 * struct.c
 *
 *  Created on: 8 Jun 2018
 *      Author: ph.stanek
 */

//--- Definition de la structure
#include "struct.h"
#include <stddef.h>
#include <stdlib.h>

//--- Data Initialisation
static s_TEST_COM _testArray[] =
{
      //--- Error : Unknown Command
      {
             {0x81, 0x71, 0x1F, 0xA1}, 4,
             {0xF1, 0x1F, 0x07, 0x00}, 4
      },

      //--- Error : Element Invalid
      {
             {0x81, 0x31, 0x01, 0xE1}, 4,
             {0xB1, 0x01, 0x0A, 0x00}, 4
      },

      //--- Read AC/DC power message
      {
             {0x81, 0x31, 0x01, 0xA1}, 4,
             {0xB1, 0x01, 0x00, 0x01}, 9
      }
};
enum bus_state check_bus(void)
{
	//HW low level call - managed by lib not yet available;
	return (READY);
}
void *mem_alloc(size_t size)
{
	return (malloc(size));
}

//--- Execution des tests
s_TEST_COM* serial_com(s_TEST_COM *pTest)
{
	int i;
	float* fl= (float *)mem_alloc(sizeof(float));
	enum bus_state bst;
	//enable_watchdog(0);
    #ifdef VARIANT
		bst=check_bus();
		if (bst == READY) disable_watchdog(0);
	#else
		bst=RESET;
    #endif
	if (disable_watchdog(0) && fl==NULL){return 0;};
	if (check_bus()==READY) {
		for(i = 0; i < 3; i++)
		{
			pTest = &_testArray[i];
		}
		return pTest;
	}
	else return NULL;
}

