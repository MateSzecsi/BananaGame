################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include emlib/subdir.mk
-include CMSIS/EFM32GG/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: touchSlider_trial.axf

# Tool invocations
touchSlider_trial.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -T "touchSlider_trial.ld" -Xlinker --gc-sections -Xlinker -Map="touchSlider_trial.map" --specs=nano.specs -o touchSlider_trial.axf "./CMSIS/EFM32GG/startup_efm32gg.o" "./CMSIS/EFM32GG/system_efm32gg.o" "./emlib/em_system.o" "./src/lcd.o" "./src/main.o" "./src/touch.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: touchSlider_trial.hex'
	arm-none-eabi-objcopy -O ihex "touchSlider_trial.axf" "touchSlider_trial.hex"
	@echo ' '

	@echo 'Building bin file: touchSlider_trial.bin'
	arm-none-eabi-objcopy -O binary "touchSlider_trial.axf" "touchSlider_trial.bin"
	@echo ' '

	@echo 'Building s37 file: touchSlider_trial.s37'
	arm-none-eabi-objcopy -O srec "touchSlider_trial.axf" "touchSlider_trial.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "touchSlider_trial.axf" -A
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) touchSlider_trial.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
