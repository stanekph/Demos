#
# Cantata tool configuration definitions
# Modifying this file may cause errors when building Cantata tests
# Generated from Cantata configuration section: x86-win-IAR-Sim-c

#
# Test execution related options
#
BUILD_PREFIX := 
REDIRECT_OUTPUT := 1
MKDIR_CMD := mkdir 
ECHO_CMD := echo 
RM_CMD := rm -f 
EXE_EXT := .out
EXECUTE_CMD := cd %DIR% ; echo "Deleting old results files" ; rm -f multiplexOutput.ccc ; rm -f $(THIS_TEST)_output.txt ; rm -f *.ctr ; rm -f *.ctg ; rm -f *.cov  ; perl %i/ExtraFiles/IDEIntegration/IARCspy/convert.pl %DIR%/../%TEST_EXE%
CANTPP_CMD := cppccd -F %COP% --intdir:%DIR% 
JAVA_CMD := java
ifdef JAVA_HOME
JAVA_CMD := "$(subst \,/,$(JAVA_HOME))/bin/java"
endif
ifdef CANTATA_JAVA_HOME
JAVA_CMD := "$(subst \,/,$(CANTATA_JAVA_HOME))/bin/java"
endif
ifndef CANTATA_INSTALL_DIR
CANTATA_INSTALL_DIR := C:/qa_systems/cantata
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
# Set to 1 to escape arguments starting with forward slashes (0 otherwise)
USE_ESCAPED_SLASHES := 0

#
# Compiler specific options
#
DEFAULT_COMPILER_NAME := C:/IAR/EW85/arm/bin/iccarm.exe
ifeq ($(USE_ESCAPED_SLASHES),1)
    ORIGINAL_DEFAULT_COMPILER_OPTS := -e %f -DD4_SUPPORT  --diag_suppress Pe161 --dlib_config C:/IAR/EW85/arm/inc/c/DLib_Config_Full.h --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug --endian=little --cpu=ARM7TDMI --fpu=None --cpu_mode thumb -Ol -o %o
    DEFAULT_COMPILER_OPTS := $(patsubst /%,//%,$(ORIGINAL_DEFAULT_COMPILER_OPTS))
    ORIGINAL_DEFAULT_LINKER_OPTS := %f -o %o --no_out_extension --redirect _Printf=_PrintfFullNoMb --redirect _Scanf=_ScanfFullNoMb --config %i/ExtraFiles/STR75x_FLASH.icf --semihosting --entry __iar_program_start --vfe --text_out locale
    DEFAULT_LINKER_OPTS := $(patsubst /%,//%,$(ORIGINAL_DEFAULT_LINKER_OPTS))
    ORIGINAL_DEFINE_OPT := -D
    DEFINE_OPT := $(patsubst /%,//%,$(ORIGINAL_DEFINE_OPT))
    ORIGINAL_LIBRARY_OPT := 
    LIBRARY_OPT := $(patsubst /%,//%,$(ORIGINAL_LIBRARY_OPT))
    ORIGINAL_INCLUDE_PATH_OPT := -I%s
    INCLUDE_PATH_OPT := $(patsubst /%,//%,$(ORIGINAL_INCLUDE_PATH_OPT))
else
    DEFAULT_COMPILER_OPTS := -e %f -DD4_SUPPORT  --diag_suppress Pe161 --dlib_config C:/IAR/EW85/arm/inc/c/DLib_Config_Full.h --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug --endian=little --cpu=ARM7TDMI --fpu=None --cpu_mode thumb -Ol -o %o
    DEFAULT_LINKER_OPTS := %f -o %o --no_out_extension --redirect _Printf=_PrintfFullNoMb --redirect _Scanf=_ScanfFullNoMb --config %i/ExtraFiles/STR75x_FLASH.icf --semihosting --entry __iar_program_start --vfe --text_out locale
    DEFINE_OPT := -D
    LIBRARY_OPT := 
    INCLUDE_PATH_OPT := -I%s
endif
DEFAULT_LINKER_NAME := C:/IAR/EW85/arm/bin/ilinkarm.exe
OBJ_FILE_EXTS := .o
MULTIPLEXED_OUTPUT := 1

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

EXTRA_DEPENDS := x86-win-IAR-Sim-c.mk