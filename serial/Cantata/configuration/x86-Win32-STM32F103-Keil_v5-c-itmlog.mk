#
# Cantata tool configuration definitions
# Modifying this file may cause errors when building Cantata tests
# Generated from Cantata configuration section: x86-Win32-STM32F103-Keil_v5-c-itmlog

#
# Test execution related options
#
BUILD_PREFIX := 
REDIRECT_OUTPUT := 1
MKDIR_CMD := mkdir 
ECHO_CMD := echo 
RM_CMD := rm -f 
EXE_EXT := .axf
EXECUTE_CMD := rm -f C://qa_systems//cantata//extras//Printf_to_ITMch0_MCBSTM32//multiplexOutput.ccc; cp -f $(THIS_TEST)/$(THIS_TEST).axf C://qa_systems//cantata//extras//Printf_to_ITMch0_MCBSTM32//obj//Printf_to_ITMch0.axf ; C://Keil_v5//UV4//UV4.exe -d C://qa_systems//cantata//extras//Printf_to_ITMch0_MCBSTM32//Printf_to_ITMch0_MCBSTM32.uvproj; cp -f C://qa_systems//cantata//extras//Printf_to_ITMch0_MCBSTM32//multiplexOutput.ccc $(THIS_TEST)/$(THIS_TEST)_output.txt; echo /n >> $(THIS_TEST)/$(THIS_TEST)_output.txt
CANTPP_CMD := cppccd -F %COP% --intdir:%DIR% 
JAVA_CMD := java
ifdef JAVA_HOME
JAVA_CMD := "$(subst \,/,$(JAVA_HOME))/bin/java"
endif
ifdef CANTATA_JAVA_HOME
JAVA_CMD := "$(subst \,/,$(CANTATA_JAVA_HOME))/bin/java"
endif
ifndef CANTATA_INSTALL_DIR
CANTATA_INSTALL_DIR := C:/QADF60~1/cantata
export CANTATA_INSTALL_DIR
endif

#
# Global flags, includes and libraries
#
GLOBAL_DEFINES := 
GLOBAL_INCLUDES := 
GLOBAL_EXTLIBS := 
DEBUG_FLAGS := 
C_LINK_FINALOPTS := 
CPP_LINK_FINALOPTS := 
CTR_STATE := ctr_state
CTR2HTML := cppctr2html
CPPCCA := cppcca
# Set to 1 to escape arguments starting with forward slashes (0 otherwise)
USE_ESCAPED_SLASHES := 0

#
# Compiler specific options
#
DEFAULT_COMPILER_NAME := C:/Keil_v5/ARM/ARMCC/bin/armcc.exe
ifeq ($(USE_ESCAPED_SLASHES),1)
    ORIGINAL_DEFAULT_COMPILER_OPTS := -c --cpu=Cortex-M3 -D__MICROLIB -O0 --apcs=interwork -DSTM32F10X_MD -o %o %f
    DEFAULT_COMPILER_OPTS := $(patsubst /%,//%,$(ORIGINAL_DEFAULT_COMPILER_OPTS))
    ORIGINAL_DEFAULT_LINKER_OPTS := --cpu=Cortex-M3 C:/QA_Systems/cantata/extras/retarget.o C:/QA_Systems/cantata/extras/serial.o C:/QA_Systems/cantata/extras/system_stm32f10x.o C:/QA_Systems/cantata/extras/startup_stm32f10x_md.o --library_type=microlib --strict --scatter C:/QA_Systems/cantata/extras/simulator.sct %f -o %o
    DEFAULT_LINKER_OPTS := $(patsubst /%,//%,$(ORIGINAL_DEFAULT_LINKER_OPTS))
    ORIGINAL_DEFINE_OPT := -D
    DEFINE_OPT := $(patsubst /%,//%,$(ORIGINAL_DEFINE_OPT))
    ORIGINAL_LIBRARY_OPT := -l%s
    LIBRARY_OPT := $(patsubst /%,//%,$(ORIGINAL_LIBRARY_OPT))
    ORIGINAL_INCLUDE_PATH_OPT := -I%s
    INCLUDE_PATH_OPT := $(patsubst /%,//%,$(ORIGINAL_INCLUDE_PATH_OPT))
else
    DEFAULT_COMPILER_OPTS := -c --cpu=Cortex-M3 -D__MICROLIB -O0 --apcs=interwork -DSTM32F10X_MD -o %o %f
    DEFAULT_LINKER_OPTS := --cpu=Cortex-M3 C:/QA_Systems/cantata/extras/retarget.o C:/QA_Systems/cantata/extras/serial.o C:/QA_Systems/cantata/extras/system_stm32f10x.o C:/QA_Systems/cantata/extras/startup_stm32f10x_md.o --library_type=microlib --strict --scatter C:/QA_Systems/cantata/extras/simulator.sct %f -o %o
    DEFINE_OPT := -D
    LIBRARY_OPT := -l%s
    INCLUDE_PATH_OPT := -I%s
endif
DEFAULT_LINKER_NAME := C:/Keil_v5/ARM/ARMCC/bin/armlink.exe
OBJ_FILE_EXTS := .o
MULTIPLEXED_OUTPUT := 1
DEFERRED_ANALYSIS := 1

#
# Top level log file
#
export CANTPP_TOP_LEVEL_LOG := make_log.dat

#
# Source file extensions
#
export SOURCE_FILE_EXTS := .c .C .wfc .WFC .Wfc 

#
# Extra dependency on this file (used in test makefiles)
#

EXTRA_DEPENDS := ../configuration/x86-Win32-STM32F103-Keil_v5-c-itmlog.mk