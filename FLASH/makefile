################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 1
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := "$(GNU_Make_Install_DirEnv)/rm" -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Sources/subdir.mk
-include Project_Settings/Linker_Files/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
default.lst \
Practica1Ensamblador.obj \

OBJS_QUOTED += \
"default.lst" \
"Practica1Ensamblador.obj" \

OBJS_OS_FORMAT += \
default.lst \
Practica1Ensamblador.obj \

EXECUTABLES += \
Practica1Ensamblador.obj \

EXECUTABLES_QUOTED += \
"Practica1Ensamblador.obj" \

EXECUTABLES_OS_FORMAT += \
Practica1Ensamblador.obj \

BURNER_OUTPUT_OUTPUTS += \
Practica1Ensamblador.obj.s19 \

BURNER_OUTPUT_OUTPUTS_QUOTED += \
"Practica1Ensamblador.obj.s19" \

BURNER_OUTPUT_OUTPUTS_OS_FORMAT += \
Practica1Ensamblador.obj.s19 \


# All Target
call-burner := 0
ifneq ($(strip $(EXECUTABLES)),)
ifneq ($(strip $(BBL_SRCS_QUOTED)),)
call-burner := 1
endif
endif
ifeq ($(call-burner),1)
all: Practica1Ensamblador.obj Practica1Ensamblador.obj.s19
else
all: Practica1Ensamblador.obj
endif

# Tool invocations
Practica1Ensamblador.obj: $(ASM_SRCS)
	@echo 'Building target: $@'
	@echo 'Executing target #2 $@'
	@echo 'Invoking: HCS08 Assembler'
	"$(HC08ToolsEnv)/ahc08" -Objn"Practica1Ensamblador.obj" -ArgFile"Practica1Ensamblador.args" $(ASM_SRCS_QUOTED) $(ASM_SRCS_QUOTED)
	@echo 'Finished building target: $@'
	@echo ' '

Practica1Ensamblador.obj.s19: $(BBL_SRCS) $(EXECUTABLES)
	@echo 'Executing target #3 $@'
	@echo 'Invoking: S08 Burner'
	"$(HC08ToolsEnv)/burner" -ArgFile"Practica1Ensamblador.obj.args" -f="$<" -env"ABS_FILE=$(strip $(EXECUTABLES_OS_FORMAT))"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(S_DEPS_QUOTED) "./*/*.d"  $(BURNER_OUTPUT_OUTPUTS_QUOTED) $(ASM_UPPER_DEPS_QUOTED) "./*/*.obj"  $(EXECUTABLES_QUOTED) $(S_UPPER_DEPS_QUOTED) $(ProjDirPath)/FLASH/Practica1Ensamblador.obj $(ProjDirPath)/FLASH/Practica1Ensamblador.args $(ProjDirPath)/FLASH/Practica1Ensamblador.obj.args $(ProjDirPath)/FLASH/Practica1Ensamblador.obj.s19 $(ProjDirPath)/FLASH/Practica1Ensamblador.sx
	-@echo ' '

.PHONY: all clean dependents explicit-dependencies warning-messages
.SECONDARY:

-include ../makefile.targets

explicit-dependencies: 

warning-messages: 

