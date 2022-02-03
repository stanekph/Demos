/*****************************************************************************/
/*                            Cantata Test Script                            */
/*****************************************************************************/
/*
 *    Filename: atest_struct.c
 *    Author: Pierre-HenriStanek
 *    Generated on: 03-Nov-2020 16:51:11
 *    Generated from: struct.c
 */
/*****************************************************************************/
/* Environment Definition                                                    */
/*****************************************************************************/

#define TEST_SCRIPT_GENERATOR 2

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
extern void * mem_alloc(size_t size);
extern enum bus_state check_bus();
int disable_watchdog(int param);
extern s_TEST_COM * serial_com(s_TEST_COM * pTest);
int enable_watchdog(int param);

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
void test_1(int);
void test_2(int);
void test_3(int);
void test_4(int);
void test_5(int);
void test_6(int);
void test_7(int);

/*****************************************************************************/
/* Coverage Analysis                                                         */
/*****************************************************************************/
/* Coverage Rule Set: DO-178B/C Level A */
static void rule_set(char* cppca_sut,
                     char* cppca_context)
{
    START_TEST("COVERAGE RULE SET",
               "DO-178B/C Level A");
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
    
    ANALYSIS_CHECK("100% Call Return Coverage",
                   cppca_callreturn_cov,
                   100.0);
    
    ANALYSIS_CHECK("100% Boolean Operand Effectiveness Coverage",
                   cppca_booleff_cov,
                   100.0);
    
    REPORT_COVERAGE(cppca_entrypoint_cov|
                    cppca_statement_cov|
                    cppca_decision_cov|
                    cppca_callreturn_cov|
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
char cantata_memory_pool[32000];
int main()
{
    INIT_MEMORY_POOL(cantata_memory_pool, 32000);
    CONFIGURE_COVERAGE("cov:boolcomb:yes");
    OPEN_LOG("atest_struct.ctr", false, 100);
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
    test_1(1);
    test_2(1);
    test_3(1);
    test_4(1);
    test_5(1);
    test_6(1);
    test_7(1);

    rule_set("*", "*");
    EXPORT_COVERAGE("atest_struct.cov", cppca_export_replace);
}

/*****************************************************************************/
/* Test Cases                                                                */
/*****************************************************************************/

void test_1(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    enum bus_state returnValue;

    START_TEST("1: check_bus",
               "default case");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("");

            /* Call SUT */
            returnValue = check_bus();

            /* Test case checks */
            CHECK_S_INT(returnValue, READY);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_2(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    size_t size = 0U;
    void * returnValue;

    START_TEST("2: mem_alloc",
               "default case");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("malloc#1");

            /* Call SUT */
            returnValue = mem_alloc(size);

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
        EXPECTED_CALLS("mem_alloc#1;check_bus#1;disable_watchdog#1;disable_watchdog#1;check_bus#1");

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
               "created to solve false case of check_bus()==READY at line number 57");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("mem_alloc#1;check_bus#1;disable_watchdog#1;disable_watchdog#1;check_bus#2");

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
               "created to solve true case of disable_watchdog(0) at line number 56");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("mem_alloc#1;check_bus#1;disable_watchdog#1;disable_watchdog#2");

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
               "created to solve false case of fl==NULL at line number 56");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("mem_alloc#2;check_bus#1;disable_watchdog#1;disable_watchdog#2;check_bus#1");

            /* Call SUT */
            returnValue = serial_com(pTest);

            /* Test case checks */
            CHECK_ADDRESS(returnValue, &ACCESS_VARIABLE(struct, _testArray)[2]);
            /* Checks on global data */
            check_global_data();
        END_CALLS();
    END_TEST();
}}}

void test_7(int doIt){
if (doIt) {
    /* Set global data */
    initialise_global_data();
    /* Set expected values for global data checks */
    initialise_expected_global_data();
    {
    /* Test case data declarations */
    s_TEST_COM * pTest = NULL;
    s_TEST_COM * returnValue;

    START_TEST("7: serial_com",
               "created to solve false case of bst == READY at line number 52");

        /* Expected Call Sequence  */
        EXPECTED_CALLS("mem_alloc#1;check_bus#2;disable_watchdog#1;check_bus#1");

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
    int returnValue;
    REGISTER_CALL("disable_watchdog");

    IF_INSTANCE("1") {
        returnValue = 0;
        CHECK_S_INT(param, 0);
        return returnValue;
    }
    IF_INSTANCE("2") {
        returnValue = 1;
        CHECK_S_INT(param, 0);
        return returnValue;
    }

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return returnValue;
}

#pragma qas cantata ignore on

/* Before-Wrapper for function malloc */
int BEFORE_malloc(size_t param_1){
    REGISTER_CALL("malloc");

    IF_INSTANCE("1") {
        CHECK_U_INT(param_1, 0U);
        return REPLACE_WRAPPER;
    }

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return AFTER_WRAPPER;
}

/* After-Wrapper for function malloc */
void * AFTER_malloc(void * cppsm_return_value,
                    size_t param_1){
    void * returnValue;

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return cppsm_return_value;
}

/* Replace-Wrapper for function malloc */
void * REPLACE_malloc(size_t param_1){
    void * returnValue;

    IF_INSTANCE("1") {
        returnValue = NULL;
        return returnValue;
    }
    LOG_SCRIPT_ERROR("Call instance not defined.");
    return returnValue;
}

/* Before-Wrapper for function mem_alloc */
int BEFORE_mem_alloc(size_t size){
    REGISTER_CALL("mem_alloc");

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
    void * returnValue;

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return cppsm_return_value;
}

/* Replace-Wrapper for function mem_alloc */
void * REPLACE_mem_alloc(size_t size){
    void * returnValue;

    IF_INSTANCE("1") {
        returnValue = NULL;
        return returnValue;
    }
    IF_INSTANCE("2") {
        returnValue = (void*) 1UL;
        return returnValue;
    }
    LOG_SCRIPT_ERROR("Call instance not defined.");
    return returnValue;
}

/* Before-Wrapper for function check_bus */
int BEFORE_check_bus(){
    REGISTER_CALL("check_bus");

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
    enum bus_state returnValue;

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return cppsm_return_value;
}

/* Replace-Wrapper for function check_bus */
enum bus_state REPLACE_check_bus(){
    enum bus_state returnValue;

    IF_INSTANCE("1") {
        returnValue = READY;
        return returnValue;
    }
    IF_INSTANCE("2") {
        returnValue = BUSY;
        return returnValue;
    }
    LOG_SCRIPT_ERROR("Call instance not defined.");
    return returnValue;
}

#pragma qas cantata ignore off

/* Stub for function enable_watchdog */
int enable_watchdog(int param){
    REGISTER_CALL("enable_watchdog");

    IF_INSTANCE("default") {
        return CANTATA_DEFAULT_VALUE;
    }

    LOG_SCRIPT_ERROR("Call instance not defined.");
    return CANTATA_DEFAULT_VALUE;
}

/* pragma qas cantata testscript end */
/*****************************************************************************/
/* End of test script                                                        */
/*****************************************************************************/
