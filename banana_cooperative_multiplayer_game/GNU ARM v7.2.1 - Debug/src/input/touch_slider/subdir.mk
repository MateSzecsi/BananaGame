################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/input/touch_slider/touch.c \
../src/input/touch_slider/touchSliderHandler.c 

OBJS += \
./src/input/touch_slider/touch.o \
./src/input/touch_slider/touchSliderHandler.o 

C_DEPS += \
./src/input/touch_slider/touch.d \
./src/input/touch_slider/touchSliderHandler.d 


# Each subdirectory must supply rules for building sources it contributes
src/input/touch_slider/touch.o: ../src/input/touch_slider/touch.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/platform/CMSIS/Include -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/bsp -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/inc -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/platform/Device/SiliconLabs/EFM32GG/Include -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/EFM32GG_STK3700/config -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/input/touch_slider/touch.d" -MT"src/input/touch_slider/touch.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/input/touch_slider/touchSliderHandler.o: ../src/input/touch_slider/touchSliderHandler.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m3 -mthumb -std=c99 '-DEFM32GG990F1024=1' -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/platform/CMSIS/Include -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/bsp -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/platform/emlib/inc -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/common/drivers -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/platform/Device/SiliconLabs/EFM32GG/Include -IC:/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v2.7/hardware/kit/EFM32GG_STK3700/config -O0 -Wall -c -fmessage-length=0 -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -MMD -MP -MF"src/input/touch_slider/touchSliderHandler.d" -MT"src/input/touch_slider/touchSliderHandler.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


