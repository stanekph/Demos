/*****************************************************************************/
/*                            Cantata Test Script                            */
/*****************************************************************************/
/*
 *    Filename: test_struct.c
 *    Author: Pierre-HenriStanek
 *    Generated on: 30-Oct-2020 16:30:52
 *    Generated from: struct.c
 */
/*****************************************************************************/
/* Environment Definition                                                    */
/*****************************************************************************/

#define TEST_SCRIPT_GENERATOR 2
#define ERROR 3

/* Include files from software under test */
#include "../../../struct.h"
#include <stddef.h>
#include <stdlib.h>

#define CANTATA_DEFAULT_VALUE 0 /* Default value of variables & stub returns */

#include <cantpp.h>  /* Cantata Directives */
/* pragma qas cantata testscript start */
/*****************************************************************************/
/* Global Data Definitions                                                   */
/*****************************************************************************/

/* Global Functions */
extern enum bus_state check_bus();
extern void * mem_alloc(size_t size);
extern s_TEST_COM * serial_com(s_TEST_COM * pTest);
int disable_watchdog(int param);
extern void * malloc(size_t __size);
int enable_watchdog(int param);
void * malloc(unsigned int param_1);
int disable_watchdog(int param_1);

/* Global data */
typedef struct struct_av_struct { s_TEST_COM(* ref__testArray)[3]; } struct_av_struct;
extern struct_av_struct av_struct;

/* Expected variables for global data */
typedef struct expected_struct_av_struct { s_TEST_COM ref__testArray[3]; } expected_struct_av_struct;
expected_struct_av_struct expected_av_struct;

/* This function initialises global data to default values. This function       */
/* is called by every test case so must not contain test case specific settings */
static void initialise_global_data(){
    INITIALISE(ACCESS_VARIABLE(struct, _testArray));
}

/* This function copies the global data settings into expected variables for */
/* use in check_global_data(). It is called by every test case so must not   */
/* contain test case specific settings.                                      */
static void initialise_expected_global_data(){
    COPY_TO_EXPECTED(ACCESS_VARIABLE(struct, _testArray), ACCESS_EXPECTED_VARIABLE(struct, _testArray));
}

/* This function checks global data against the expected values. */
static void check_global_data(){
    CHECK_MEMORY("ACCESS_VARIABLE(struct, _testArray)", ACCESS_VARIABLE(struct, _testArray), ACCESS_EXPECTED_VARIABLE(struct, _testArray), sizeof(ACCESS_EXPECTED_VARIABLE(struct, _testArray)));
}

/* Prototypes for test functions */
void run_tests();
void test_serial_com(int);
void test_serial_com_1(int);
void test_3(int);
void test_4(int);
void test_5(int);
void test_6(int);

/*****************************************************************************/
/* Coverage Analysis                                                         */
/*****************************************************************************/
/* Coverage Rule Set: ISO26262-6 2011 ASIL D unit level (HR) */
static void rule_set(char* cppca_sut,
                     char* cppca_context)
{
    START_TEST("COVERAGE RULE SET",
               "ISO26262-6 2011 ASIL D unit level (HR)");
#ifdef CANTPP_SUBSET_DEFERRED_ANALYSIS
    TEST_SCRIPT_WARNING("Coverage Rule Set ignored in deferred analysis mode\n");
#elif CANTPP_COVERAGE_INSTRUMENTATION_DISABLED
    TEST_SCRIPT_WARNING("Coverage Instrumentation has been disabled\n");
#elif CANTPP_INSTRUMENTATION_DISABLED
    TEST_SCRIPT_WARNING("Instrumentation has been disabled\n");
#else
    ANALYSIS_CHECK("100% Entry Point Coverage",
                   cppca_entrypoint_cov,
                   100.0);
    
    ANALYSIS_CHECK("100% Statement Coverage",
                   cppca_statement_cov,
                   100.0);
    
    ANALYSIS_CHECK("100% Decision Coverage",
                   cppca_decision_cov,
                   100.0);
    
    ANALYSIS_CHECK("100% Boolean Operand Effectiveness Coverage",
                   cppca_booleff_cov,
                   100.0);
    
    REPORT_COVERAGE(cppca_entrypoint_cov|
                    cppca_statement_cov|
                    cppca_decision_cov|
                    cppca_booleff_cov,
                    cppca_sut,
                    cppca_all_details|cppca_include_catch,
                    cppca_context);
#endif
    END_TEST();
}

/*****************************************************************************/
/* Program Entry Point                                                       */
/*****************************************************************************/
char cantata_memory_pool[16000];
int main()
{
    INIT_MEMORY_POOL(cantata_memory_pool, 16000);
    CONFIGURE_COVERAGE("cov:boolcomb:yes");
    OPEN_LOG("test_struct.ctr", false, 100);
    START_SCRIPT("struct", true);

    run_tests();

    REPORT_MEMORY_POOL();
    return !END_SCRIPT(true);
}

/*****************************************************************************/
/* Test Control                                                              */
/*****************************************************************************/
/* run_tests() contains calls to the individual test cases, you can turn test*/
/* cases off by adding comments*/
void run_tests()
{
    test_serial_com(1);
    test_serial_com_1(1);
    test_3(1);
    test_4(1);
    test_5(1);
    test_6(1);

    rule_set("*", "*");
    EXPORT_COVERAGE("test_struct.cov", cppca_export_replace);
}

/*****************************************************************************/
/* Test Cases                                                                */
/*****************************************************************************/

void test_serial_com(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    s_TEST_COM * pTest = (s_TEST_COM *) malloc(sizeof(s_TEST_COM));
    s_TEST_COM * returnValue;

    START_TEST("test_serial_com",
               "<Insert test case description here>");

        /* Expected Call Sequence  */
        EXPECT_CALL("mem_alloc", "1", "default");
        EXPECT_CALL("disable_watchdog", "1", "default");
        EXPECT_CALL("check_bus", "1", "default");
            /* Call SUT */
        pTest->lengthIn = 5;
        pTest->lengthOut = 5;
        pTest->dataIn[0] = 'm';
        pTest->dataIn[1] = 'g';
        pTest->dataIn[2] = 's';
        pTest->dataIn[3] = 'k';
        pTest->dataIn[4] = '3';
        pTest->dataOut[0] = 'm';
        pTest->dataOut[1] = 'e';
        pTest->dataOut[2] = 's';
        pTest->dataOut[3] = 'g';
        pTest->dataOut[4] = '2';

            returnValue = serial_com(pTest);

            /* Test case checks */
            CHECK_CHAR(returnValue->dataIn[0], 'U');
            CHECK_CHAR(pTest->dataIn[0], 'm');
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_serial_com_1(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    s_TEST_COM * pTest = (s_TEST_COM *) malloc(sizeof(s_TEST_COM));
    s_TEST_COM * returnValue;

    START_TEST("test_serial_com_busKO",
               "<Insert test case description here>");

        /* Expected Call Sequence  */
        EXPECT_CALL("mem_alloc", "1", "default");
        EXPECT_CALL("disable_watchdog", "1", "default");
        EXPECT_CALL("check_bus", "next", "busKO");
            /* Call SUT */
        pTest->lengthIn = 5;
        pTest->lengthOut = 5;
        pTest->dataIn[0] = 'm';
        pTest->dataIn[1] = 'g';
        pTest->dataIn[2] = 's';
        pTest->dataIn[3] = 'k';
        pTest->dataIn[4] = '3';
        pTest->dataOut[0] = 'm';
        pTest->dataOut[1] = 'e';
        pTest->dataOut[2] = 's';
        pTest->dataOut[3] = 'g';
        pTest->dataOut[4] = '2';


            returnValue = serial_com(pTest);

            /* Test case checks */
            CHECK_ADDRESS(returnValue, NULL);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_3(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    s_TEST_COM * pTest = NULL;
    s_TEST_COM * returnValue;

    START_TEST("3: serial_com",
               "default case");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("mem_alloc#1;disable_watchdog#21;check_bus#1");

            /* Call SUT */
            returnValue = serial_com(pTest);

            /* Test case checks */
            CHECK_ADDRESS(returnValue, &ACCESS_VARIABLE(struct, _testArray)[2]);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_4(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    s_TEST_COM * pTest = NULL;
    s_TEST_COM * returnValue;

    START_TEST("4: serial_com",
               "created to solve false case of check_bus()==READY at line number 58");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("mem_alloc#1;disable_watchdog#21;check_bus#2");

            /* Call SUT */
            returnValue = serial_com(pTest);

            /* Test case checks */
            CHECK_ADDRESS(returnValue, NULL);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_5(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    s_TEST_COM * pTest = NULL;
    s_TEST_COM * returnValue;

    START_TEST("5: serial_com",
               "created to solve true case of disable_watchdog(0) at line number 57");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("mem_alloc#1;disable_watchdog#22");

            /* Call SUT */
            returnValue = serial_com(pTest);

            /* Test case checks */
            CHECK_ADDRESS(returnValue, NULL);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_6(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    s_TEST_COM * pTest = NULL;
    s_TEST_COM * returnValue;

    START_TEST("6: serial_com",
               "created to solve false case of fl==NULL at line number 57");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("mem_alloc#2;disable_watchdog#22;check_bus#1");

            /* Call SUT */
            returnValue = serial_com(pTest);

            /* Test case checks */
            CHECK_ADDRESS(returnValue, &ACCESS_VARIABLE(struct, _testArray)[2]);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

/*****************************************************************************/
/* Call Interface Control                                                    */
/*****************************************************************************/

/* Stub for function disable_watchdog */
int disable_watchdog(int param){
    REGISTER_CALL("disable_watchdog");

    IF_INSTANCE("default") {
        return CANTATA_DEFAULT_VALUE;
    }
    IF_INSTANCE("1") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("2") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("3") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("4") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("5") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("6") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("7") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("8") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("9") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("10") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("11") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("12") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("13") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("14") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("15") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("16") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("17") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("18") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("19") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("20") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("21") {
        int returnValue;
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("22") {
        int returnValue;
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    LOG_SCRIPT_ERROR("Call instance not defined.");
    return CANTATA_DEFAULT_VALUE;
}

#pragma qas cantata ignore on

/* Before-Wrapper for function mem_alloc */
int BEFORE_mem_alloc(size_t size){
    REGISTER_CALL("mem_alloc");

    IF_INSTANCE("default") {
        return AFTER_WRAPPER;
    }
    IF_INSTANCE("1") {
        CHECK_U_INT(size, 4U);
        return REPLACE_WRAPPER;
    }
    IF_INSTANCE("2") {
        CHECK_U_INT(size, 4U);
        return REPLACE_WRAPPER;
    }

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return AFTER_WRAPPER;
}

/* After-Wrapper for function mem_alloc */
void * AFTER_mem_alloc(void * cppsm_return_value,
                       size_t size){
    IF_INSTANCE("default") {
        return cppsm_return_value;
    }

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return cppsm_return_value;
}

/* Replace-Wrapper for function mem_alloc */
void * REPLACE_mem_alloc(size_t size){

    IF_INSTANCE("1") {
        void * returnValue;
        returnValue = NULL;
        return returnValue;
    }
    IF_INSTANCE("2") {
        void * returnValue;
        returnValue = (void*) 1UL;
        return returnValue;
    }
    LOG_SCRIPT_ERROR("Call instance not defined.");
    return 0;
}

/* Before-Wrapper for function check_bus */
int BEFORE_check_bus(){
    REGISTER_CALL("check_bus");

    IF_INSTANCE("default") {
        return AFTER_WRAPPER;
    }
    IF_INSTANCE("busKO") {
        return AFTER_WRAPPER;
    }
    IF_INSTANCE("1") {
        return REPLACE_WRAPPER;
    }
    IF_INSTANCE("2") {
        return REPLACE_WRAPPER;
    }

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return AFTER_WRAPPER;
}

/* After-Wrapper for function check_bus */
enum bus_state AFTER_check_bus(enum bus_state cppsm_return_value){
    IF_INSTANCE("default") {
        return cppsm_return_value;
    }
    IF_INSTANCE("busKO") {
        return KO;
    }

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return cppsm_return_value;
}

/* Replace-Wrapper for function check_bus */
enum bus_state REPLACE_check_bus(){

    IF_INSTANCE("1") {
        enum bus_state returnValue;
        returnValue = READY;
        return returnValue;
    }
    IF_INSTANCE("2") {
        enum bus_state returnValue;
        returnValue = BUSY;
        return returnValue;
    }
    LOG_SCRIPT_ERROR("Call instance not defined.");
    return (enum bus_state) CANTATA_DEFAULT_VALUE;
}

#pragma qas cantata ignore off

/* pragma qas cantata testscript end */
/*****************************************************************************/
/* End of test script                                                        */
/*****************************************************************************/
