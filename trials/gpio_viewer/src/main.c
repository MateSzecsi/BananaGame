#include "em_cmu.h"
#include "em_gpio.h"
#include "segmentlcd.h"

int main(void)
{
	CMU_ClockEnable(cmuClock_GPIO, true);
	GPIO_PinModeSet(gpioPortD, 1, gpioModeInput, 0);

	SegmentLCD_Init(false);

	while (1) {
		unsigned in = GPIO_PinInGet(gpioPortD, 1);
		SegmentLCD_Number(in);
		if (in == 0) {
			SegmentLCD_Number(0);
			while(1) {}
		}
	}
}
