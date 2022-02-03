/*****************************************************************************/
/*                                                                           */
/*                       Cantata User Guide Example                          */
/*                                                                           */
/*****************************************************************************/
/*                                                                           */
/* Example  : Blood Pressure (C)                                             */
/*                                                                           */
/* Filename : blood_pressure.c                                               */
/*                                                                           */
/* Blood pressure readings are usually given as 2 numbers, for example, 110  */
/* over 70. The first number is the systolic blood pressure reading, and it  */
/* represents the maximum pressure exerted when the heart contracts. The     */
/* second number is the diastolic blood pressure reading, and it represents  */
/* the pressure in the arteries when the heart is rest.                      */
/*                                                                           */
/* For the purposes of this example, below 90/60 is considered low pressure  */
/* and above 160/100 is considered high pressure.                            */
/*                                                                           */
/*****************************************************************************/

#include "blood_pressure.h"

/*
 * Blood Pressure Check
 * 
 * Calculates whether the specified readings are above, below or within the
 * range of a safe blood pressure level. If the readings are too low or too
 * high, an alarm is sounded.
 *
 * Parameters:
 *     systolic  - the systolic blood pressure reading taken
 *     diastolic - the diastolic blood pressure reading taken
 *
 * Returns:
 *     One of PRESSURE_NORMAL, HIGH_PRESSURE_WARNING, LOW_PRESSURE_WARNING
 *     depending on whether the reading specified is considered normal, high or
 *     low.
 */
int blood_pressure_check(int systolic, int diastolic)
{
    int status = NO_READING;
    
	if (high_pressure_check(systolic, diastolic))
	{
		status = HIGH_PRESSURE_WARNING;
		sound_alarm();
	}
	else
	{
		if (low_pressure_check(systolic, diastolic))
		{
			status = LOW_PRESSURE_WARNING;
			sound_alarm();
		}
		else
		{
			status = PRESSURE_NORMAL;
		}
	}

    return status;
}

/*
 * High Pressure Check
 *
 * Checks that the specified readings are, independently, not greater than 160
 * and 100 respectively.
 *
 * Parameters:
 *     systolic  - the systolic blood pressure reading taken
 *     diastolic - the diastolic blood pressure reading taken
 *
 * Returns:
 * 	   1 if high pressure is encountered and 0 otherwise.
 */
int high_pressure_check(int systolic, int diastolic)
{
    int high_pressure;

    if ((systolic > 160) || (diastolic > 100))
    {
        high_pressure = 1;
    }
    else
    {
        high_pressure = 0;
    }

    return high_pressure;
}

/*
 * Low Pressure Check
 *
 * Checks that the specified readings are, independently, less than 90 and 60
 * respectively.
 *
 * Parameters:
 *     systolic  - the systolic blood pressure reading taken
 *     diastolic - the diastolic blood pressure reading taken
 *
 * Returns:
 *     1 if low pressure is encountered and 0 otherwise.
 */
int low_pressure_check(int systolic, int diastolic)
{
    int low_pressure;

    if ((systolic < 90) || (diastolic < 60))
    {
        low_pressure = 1;
    }
    else
    {
        low_pressure = 0;
    }

    return low_pressure;
}
