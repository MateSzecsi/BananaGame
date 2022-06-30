################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/state_machine/banana_game_state_machine/subdir.mk
-include src/input/touch_slider/subdir.mk
-include src/input/joystick/subdir.mk
-include src/input/input_handler/subdir.mk
-include src/input/button/subdir.mk
-include src/config/subdir.mk
-include src/subdir.mk
-include segmentlcd/subdir.mk
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
all: banana_cooperative_multiplayer_game.axf

# Tool invocations
banana_cooperative_multiplayer_game.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -T "banana_cooperative_multiplayer_game.ld" -Xlinker --gc-sections -Xlinker -Map="banana_cooperative_multiplayer_game.map" --specs=nano.specs -o banana_cooperative_multiplayer_game.axf "./CMSIS/EFM32GG/startup_efm32gg.o" "./CMSIS/EFM32GG/system_efm32gg.o" "./emlib/em_cmu.o" "./emlib/em_gpio.o" "./emlib/em_lcd.o" "./emlib/em_lesense.o" "./emlib/em_system.o" "./emlib/em_usart.o" "./segmentlcd/segmentlcd.o" "./segmentlcd/segmentlcd_individual.o" "./src/config/config.o" "./src/input/button/buttonHandler.o" "./src/input/input_handler/inputHandler.o" "./src/input/joystick/joystickHandler.o" "./src/input/touch_slider/touch.o" "./src/input/touch_slider/touchSliderHandler.o" "./src/irqHandler.o" "./src/main.o" "./src/state_machine/banana_game_state_machine/bananaGameStateMachine.o" -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: banana_cooperative_multiplayer_game.hex'
	arm-none-eabi-objcopy -O ihex "banana_cooperative_multiplayer_game.axf" "banana_cooperative_multiplayer_game.hex"
	@echo ' '

	@echo 'Building bin file: banana_cooperative_multiplayer_game.bin'
	arm-none-eabi-objcopy -O binary "banana_cooperative_multiplayer_game.axf" "banana_cooperative_multiplayer_game.bin"
	@echo ' '

	@echo 'Building s37 file: banana_cooperative_multiplayer_game.s37'
	arm-none-eabi-objcopy -O srec "banana_cooperative_multiplayer_game.axf" "banana_cooperative_multiplayer_game.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "banana_cooperative_multiplayer_game.axf" -A
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) banana_cooperative_multiplayer_game.axf
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
