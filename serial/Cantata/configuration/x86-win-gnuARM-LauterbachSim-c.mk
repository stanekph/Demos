#
# Cantata tool configuration definitions
# Modifying this file may cause errors when building Cantata tests
# Generated from Cantata configuration section: x86-win-gnuARM-LauterbachSim-c

#
# Test execution related options
#
BUILD_PREFIX := 
REDIRECT_OUTPUT := 1
MKDIR_CMD := mkdir 
ECHO_CMD := echo 
RM_CMD := rm -f 
EXE_EXT := .elf
EXECUTE_CMD := C:/Perl64/bin/perl C:/T32/t32.pl %DIR%/../%TEST_EXE%
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
DEFAULT_COMPILER_NAME := C:/GNUARM/54/bin/arm-none-eabi-gcc.exe
ifeq ($(USE_ESCAPED_SLASHES),1)
    ORIGINAL_DEFAULT_COMPILER_OPTS := -c -mthumb -mcpu=ARM7TDMI -mlittle-endian -g %f -o %o
    DEFAULT_COMPILER_OPTS := $(patsubst /%,//%,$(ORIGINAL_DEFAULT_COMPILER_OPTS))
    ORIGINAL_DEFAULT_LINKER_OPTS := --specs=rdimon.specs -lc -lc -lrdimon %f -o %o
    DEFAULT_LINKER_OPTS := $(patsubst /%,//%,$(ORIGINAL_DEFAULT_LINKER_OPTS))
    ORIGINAL_DEFINE_OPT := -D
    DEFINE_OPT := $(patsubst /%,//%,$(ORIGINAL_DEFINE_OPT))
    ORIGINAL_LIBRARY_OPT := -l%s
    LIBRARY_OPT := $(patsubst /%,//%,$(ORIGINAL_LIBRARY_OPT))
    ORIGINAL_INCLUDE_PATH_OPT := -I%s
    INCLUDE_PATH_OPT := $(patsubst /%,//%,$(ORIGINAL_INCLUDE_PATH_OPT))
else
    DEFAULT_COMPILER_OPTS := -c -mthumb -mcpu=ARM7TDMI -mlittle-endian -g %f -o %o
    DEFAULT_LINKER_OPTS := --specs=rdimon.specs -lc -lc -lrdimon %f -o %o
    DEFINE_OPT := -D
    LIBRARY_OPT := -l%s
    INCLUDE_PATH_OPT := -I%s
endif
DEFAULT_LINKER_NAME := C:/GNUARM/54/bin/arm-none-eabi-gcc.exe
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

EXTRA_DEPENDS := ../configuration/x86-win-gnuARM-LauterbachSim-c.mk