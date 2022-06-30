#include "touch.h"
#include "lcd.h"
#include "em_device.h"
#include <stdio.h>

int main(void) {

	Touch_Init();
	LCD_Init();

	while(1) {

		Touch_PeriodicProcess();

		unsigned mask = Touch_Interpolate(Touch_Read());
		char mask_str[100];
		sprintf(mask_str, "%u", mask);
		LCD_WriteString(mask_str);

		for(int i = 0; i < 10000; i++);
	}

	return 0;
}
