/*****************************************************************************/
/*                                                                           */
/*                       Cantata User Guide Example                          */
/*                                                                           */
/*****************************************************************************/
/*                                                                           */
/* Example  : Blood Pressure (C)                                             */
/*                                                                           */
/* Filename : blood_pressure.h                                               */
/*                                                                           */
/*****************************************************************************/
        
/* 
 * System includes
 */
#include <stdio.h>

/*
 * Constants
 */
#define NO_READING             0
#define LOW_PRESSURE_WARNING   1
#define HIGH_PRESSURE_WARNING  2
#define PRESSURE_NORMAL        3

/*
 * Module Functions
 */
int high_pressure_check(int systolic, int diastolic);
int low_pressure_check(int systolic, int diastolic);
int blood_pressure_check(int systolic, int diastolic);

/*
 * External Functions
 */
void sound_alarm();
