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
all: gpio_viewer.axf

# Tool invocations
gpio_viewer.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -T "gpio_viewer.ld" -Xlinker --gc-sections -Xlinker -Map="gpio_viewer.map" --specs=nano.specs -o gpio_viewer.axf "./CMSIS/EFM32GG/startup_efm32gg.o" "./CMSIS/EFM32GG/system_efm32gg.o" "./emlib/em_cmu.o" "./emlib/em_gpio.o" "./emlib/em_lcd.o" "./emlib/em_system.o" "./src/main.o" "./src/segmentlcd.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: gpio_viewer.hex'
	arm-none-eabi-objcopy -O ihex "gpio_viewer.axf" "gpio_viewer.hex"
	@echo ' '

	@echo 'Building bin file: gpio_viewer.bin'
	arm-none-eabi-objcopy -O binary "gpio_viewer.axf" "gpio_viewer.bin"
	@echo ' '

	@echo 'Building s37 file: gpio_viewer.s37'
	arm-none-eabi-objcopy -O srec "gpio_viewer.axf" "gpio_viewer.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "gpio_viewer.axf" -A
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) gpio_viewer.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
