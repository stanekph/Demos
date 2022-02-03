#
# Generated makefile for test "test_struct"
#

#
# Stop the MAKEFLAGS variable being exported.
# This is needed for sub-make processes to use different options.
#
unexport MAKEFLAGS

#
# The name of the test
#
THIS_TEST := test_struct

#
# Test script file
#
test_struct_TESTOBJ := test_struct

#
# Software under test
#
test_struct_SUTOBJ := struct

#
# Compile and link as 'C' or 'CXX'
#
test_struct_C_OR_CPP_MODE := C

#
# Additional libraries to link
#
test_struct_EXTLIBS := 

#
# Additional object files to link
#
test_struct_EXTOBJS := 

#
# Additional defines for this test
#
test_struct_DEFINES := 

#
# Additional includes for this test
#
test_struct_INCLUDES := 

#
# Include the test definitions makefile
#
include ../configuration/test_defs.mk

#
# Rules for compiling the software under test
#
test_struct/struct.o : ../../struct.c
	$(MKDIR_CMD) -p test_struct
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,0,0 >> $(CANTPP_TOP_LEVEL_LOG)
	-@$(ECHO_CMD_MED) ../../struct.c > $(DYNAMIC_THIS_TEST)/filelist.lst
	-@$(QAC_CMD)
	$(subst %DEFINES%, $(foreach define,$(test_struct_ALL_DEFINES),$(DEFINE_OPT)$(define)), $(subst %INCLUDES%, $(foreach include,$(test_struct_ALL_INCLUDES),$(subst %s,$(include),$(INCLUDE_PATH_OPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/$(test_struct_SUTOBJ),$(COMPILE_CC_CMD))))

#
# Rule for compiling the test script
#
test_struct/test_struct.o : test_struct/test_struct.c
	$(MKDIR_CMD) -p test_struct
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,0,0 >> $(CANTPP_TOP_LEVEL_LOG)
	-@$(ECHO_CMD_MED) test_struct/test_struct.c > $(DYNAMIC_THIS_TEST)/filelist.lst
	$(subst %DEFINES%, $(foreach define,$(test_struct_ALL_DEFINES),$(DEFINE_OPT)$(define)), $(subst %INCLUDES%, $(foreach include,$(test_struct_ALL_INCLUDES),$(subst %s,$(include),$(INCLUDE_PATH_OPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/$(test_struct_SUTOBJ),$(COMPILE_CC_CMD))))

#
# Rule for linking the test executable
#
$(test_struct_TEST_EXE) : \
	$(test_struct_SUTOBJ_FILENAMES) \
	$(test_struct_TESTOBJ_FILENAMES) \
	$(test_struct_EXTRA_DEPENDS)
	@$(RM_CMD) $(DYNAMIC_THIS_TEST)/*.cov $(DYNAMIC_THIS_TEST)/*.ctr $(DYNAMIC_THIS_TEST)/*.ctg
	@$(ECHO_CMD_MED) ",,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),1,0,0,1,0" >> $(CANTPP_TOP_LEVEL_LOG)
	$(subst %EXTLIBS%, $(foreach extlib,$(test_struct_ALL_EXTLIBS),$(subst %s,$(extlib),$(test_struct_LINK_EXTLIBOPT))), $(subst %n,$(DYNAMIC_THIS_TEST)/test_struct,$(subst %EXTOBJS%,$(test_struct_EXTOBJS),$(CC_LINK_CMD))))
	@$(ECHO_CMD_MED) Built test_struct successfully

#
# Rule for running the test executable
#
$(test_struct_CTR_FILE) : $(test_struct_TEST_EXE)
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),0,1,0,1,0 >> $(CANTPP_TOP_LEVEL_LOG)
	@$(RUN_CMD)
	@$(ECHO_CMD_MED) ,,$(NUMBER_OF_TESTS),$(firstword $(subst /, ,$(dir $@))),0,0,1,0,0 >> $(CANTPP_TOP_LEVEL_LOG)
	@$(CPPCCA_GENERATE_CMD)

#
# Rule for ensuring nothing is built/run unless the ctr file is out of date
#
$(test_struct_RUN) : $(test_struct_CTR_FILE)

#
# Rule for controlling the building and running of the test executable
#
ifeq ($(EXECUTE),1)
ifeq ($(PUSH_TO_SERVER),1)
$(test_struct_BUILD_AND_RUN) : 
	-@$(MAKE) $(test_struct_RUN) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	@$(ECHO_CMD_MED) Uploading test results to Cantata Server...
	@$(JAVA_CMD) -cp "$(CANTATA_INSTALL_DIR)/bin/client.jar" com.qas.cantata.client.control.CCLC filesToLoad=$(DYNAMIC_THIS_TEST)/.*.ctr,$(DYNAMIC_THIS_TEST)/.*.ctg,$(DYNAMIC_THIS_TEST)/.*.cov,../../struct.c,$(DYNAMIC_THIS_TEST)/test_struct.c optionsFiles=../../ipg.cop,$(DYNAMIC_THIS_TEST)/ipg.cop 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	-@$(CTR2HTML_CMD)
	@$(CTR_STATE_CMD)
else
$(test_struct_BUILD_AND_RUN) : 
	-@$(MAKE) $(test_struct_RUN) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	-@$(CTR2HTML_CMD)
	@$(CTR_STATE_CMD)
endif
else
$(test_struct_BUILD_AND_RUN) : 
	@$(MAKE) $(test_struct_TEST_EXE) --warn-undefined-variables -s -f $(DYNAMIC_THIS_TEST)/test.mk 2>&1 | tee -a $(DYNAMIC_THIS_TEST)/$($(DYNAMIC_THIS_TEST)_LOG)
	@$(ECHO_CMD_MED) Finished $(DYNAMIC_THIS_TEST)
endif

#
# Rules for generating the required folder structure
#

#
# Additional dependencies
#
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Config_Full.h
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Defaults.h
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Product.h
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Product_stdlib.h
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/stddef.h
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/stdlib.h
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/ycheck.h
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/ysizet.h
test_struct/struct.o : ../../../../../../IAR/EW85/arm/inc/c/yvals.h
test_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/cpp_preinclude.h
test_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/cpprtti.h
test_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-Win32-gcc8.2.0-bundled.h
test_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-win-IAR-Sim-c.h
test_struct/struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-win-gnuARM-LauterbachSim-c.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/_ansi.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/_newlib_version.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/alloca.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/_default_types.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/_types.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/ieeefp.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/stdlib.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/newlib.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/stdlib.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/_types.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/cdefs.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/config.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/features.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/lock.h
test_struct/struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/reent.h
test_struct/struct.o : ../../../../../../gnuarm/54/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h
test_struct/struct.o : ../../ipg.cop
test_struct/struct.o : ../../struct.h
test_struct/struct.o : test_struct/ipg.cop
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Config_Full.h
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Defaults.h
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Product.h
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/DLib_Product_stdlib.h
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/stddef.h
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/stdlib.h
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/ycheck.h
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/ysizet.h
test_struct/test_struct.o : ../../../../../../IAR/EW85/arm/inc/c/yvals.h
test_struct/test_struct.o : ../../../../../../QA9A1B~1/cantata/inc/cpp_preinclude.h
test_struct/test_struct.o : ../../../../../../QA9A1B~1/cantata/inc/cpprtti.h
test_struct/test_struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-Win32-gcc8.2.0-bundled.h
test_struct/test_struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-win-IAR-Sim-c.h
test_struct/test_struct.o : ../../../../../../QA9A1B~1/cantata/inc/ports/x86-win-gnuARM-LauterbachSim-c.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/_ansi.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/_newlib_version.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/alloca.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/_default_types.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/_types.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/ieeefp.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/machine/stdlib.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/newlib.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/stdlib.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/_types.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/cdefs.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/config.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/features.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/lock.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/arm-none-eabi/include/sys/reent.h
test_struct/test_struct.o : ../../../../../../gnuarm/54/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h
test_struct/test_struct.o : ../../ipg.cop
test_struct/test_struct.o : ../../struct.h
test_struct/test_struct.o : test_struct/ipg.cop


