#
# Generated makefile for test "atest_struct"
#

#
# Stop the MAKEFLAGS variable being exported.
# This is needed for sub-make processes to use different options.
#
unexport MAKEFLAGS

#
# The name of the test
#
THIS_TEST := atest_struct

#
# Test script file
#
atest_struct_TESTOBJ := atest_struct

#
# Software under test
#
atest_struct_SUTOBJ := struct

#
# Compile and link as 'C' or 'CXX'
#
atest_struct_C_OR_CPP_MODE := C

#
# Additional libraries to link
#
atest_struct_EXTLIBS := 

#
# Additional object files to link
#
atest_struct_EXTOBJS := 

#
# Additional defines for this test
#
atest_struct_DEFINES := VARIANT 

#
# Additional includes for this test
#
atest_struct_INCLUDES := 

#
# Include the test definitions makefile
#
include ../configuration/test_defs.mk

#
# Rules for compiling the software under test
#
atest_struct/struct.o : ../../struct.c
	$(MKDIR_CMD) -p atest_struct
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,0,0 >> $(CANTPP_TOP_LEVEL_LOG)
	-@$(ECHO_CMD_MED) ../../struct.c > $(DYNAMIC_THIS_TEST)/filelist.lst
	-@$(QAC_CMD)
	$(subst %DEFINES%, $(foreach define,$(atest_struct_ALL_DEFINES),$(DEFINE_OPT)$(define)), $(subst %INCLUDES%, $(foreach include,$(atest_struct_ALL_INCLUDES),$(subst %s,$(include),$(INCLUDE_PATH_OPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/$(atest_struct_SUTOBJ),$(COMPILE_CC_CMD))))

#
# Rule for compiling the test script
#
atest_struct/atest_struct.o : atest_struct/atest_struct.c
	$(MKDIR_CMD) -p atest_struct
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,0,0 >> $(CANTPP_TOP_LEVEL_LOG)
	-@$(ECHO_CMD_MED) atest_struct/atest_struct.c > $(DYNAMIC_THIS_TEST)/filelist.lst
	$(subst %DEFINES%, $(foreach define,$(atest_struct_ALL_DEFINES),$(DEFINE_OPT)$(define)), $(subst %INCLUDES%, $(foreach include,$(atest_struct_ALL_INCLUDES),$(subst %s,$(include),$(INCLUDE_PATH_OPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/$(atest_struct_SUTOBJ),$(COMPILE_CC_CMD))))

#
# Rule for linking the test executable
#
$(atest_struct_TEST_EXE) : \
	$(atest_struct_SUTOBJ_FILENAMES) \
	$(atest_struct_TESTOBJ_FILENAMES) \
	$(atest_struct_EXTRA_DEPENDS)
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ",,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,1,0" >> $(CANTPP_TOP_LEVEL_LOG)
	$(subst %EXTLIBS%, $(foreach extlib,$(atest_struct_ALL_EXTLIBS),$(subst %s,$(extlib),$(atest_struct_LINK_EXTLIBOPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/atest_struct,$(subst %EXTOBJS%,$(atest_struct_EXTOBJS),$(CC_LINK_CMD))))
	@$(ECHO_CMD_MED) Built atest_struct successfully

#
# Rule for running the test executable
#
$(atest_struct_CTR_FILE) : $(atest_struct_TEST_EXE)
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),0,1,0,1,0 >> $(CANTPP_TOP_LEVEL_LOG)
	@$(RUN_CMD)
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),0,0,1,0,0 >> $(CANTPP_TOP_LEVEL_LOG)
	@$(CPPCCA_GENERATE_CMD)

#
# Rule for ensuring nothing is built/run unless the ctr file is out of date
#
$(atest_struct_RUN) : $(atest_struct_CTR_FILE)

#
# Rule for controlling the building and running of the test executable
#
ifeq ($(EXECUTE),1)
ifeq ($(PUSH_TO_SERVER),1)
$(atest_struct_BUILD_AND_RUN) : 
	-@$(MAKE) $(atest_struct_RUN) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	@$(ECHO_CMD_MED) Uploading test results to Cantata Server...
	@$(JAVA_CMD) -cp "$(CANTATA_INSTALL_DIR)/bin/client.jar" com.qas.cantata.client.control.CCLC filesToLoad=$(DYNAMIC_THIS_TEST)/.*.ctr,$(DYNAMIC_THIS_TEST)/.*.ctg,$(DYNAMIC_THIS_TEST)/.*.cov,../../struct.c,$(DYNAMIC_THIS_TEST)/atest_struct.c optionsFiles=../../ipg.cop,$(DYNAMIC_THIS_TEST)/ipg.cop 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	-@$(CTR2HTML_CMD)
	@$(CTR_STATE_CMD)
else
$(atest_struct_BUILD_AND_RUN) : 
	-@$(MAKE) $(atest_struct_RUN) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	-@$(CTR2HTML_CMD)
	@$(CTR_STATE_CMD)
endif
else
$(atest_struct_BUILD_AND_RUN) : 
	@$(MAKE) $(atest_struct_TEST_EXE) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	@$(ECHO_CMD_MED) Finished $(DYNAMIC_THIS_TEST)
endif

#
# Rules for generating the required folder structure
#

#
# Additional dependencies
#
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Config_Full.h
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Defaults.h
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Product.h
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Product_stdlib.h
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/stddef.h
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/stdlib.h
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/ycheck.h
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/ysizet.h
atest_struct/atest_struct.o : ../../../../../../IAR/EW85/arm/inc/c/yvals.h
atest_struct/atest_struct.o : ../../../../../../QA9A1B~1/cantata/inc/cpp_preinclude.h
atest_struct/atest_struct.o : ../../../../../../QA9A1B~1/cantata/inc/cpprtti.h
atest_struct/atest_struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-Win32-gcc8.2.0-bundled.h
atest_struct/atest_struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-win-IAR-Sim-c.h
atest_struct/atest_struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-win-gnuARM-LauterbachSim-c.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/_ansi.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/_newlib_version.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/alloca.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/_default_types.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/_types.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/ieeefp.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/stdlib.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/newlib.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/stdlib.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/_types.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/cdefs.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/config.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/features.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/lock.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/reent.h
atest_struct/atest_struct.o : ../../../../../../gnuarm/54/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h
atest_struct/atest_struct.o : ../../ipg.cop
atest_struct/atest_struct.o : ../../struct.h
atest_struct/atest_struct.o : atest_struct/ipg.cop
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Config_Full.h
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Defaults.h
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Product.h
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Product_stdlib.h
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/stddef.h
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/stdlib.h
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/ycheck.h
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/ysizet.h
atest_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/yvals.h
atest_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/cpp_preinclude.h
atest_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/cpprtti.h
atest_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-Win32-gcc8.2.0-bundled.h
atest_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-win-IAR-Sim-c.h
atest_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-win-gnuARM-LauterbachSim-c.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/_ansi.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/_newlib_version.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/alloca.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/_default_types.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/_types.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/ieeefp.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/stdlib.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/newlib.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/stdlib.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/_types.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/cdefs.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/config.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/features.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/lock.h
atest_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/reent.h
atest_struct/struct.o : ../../../../../../gnuarm/54/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h
atest_struct/struct.o : ../../ipg.cop
atest_struct/struct.o : ../../struct.h
atest_struct/struct.o : atest_struct/ipg.cop


