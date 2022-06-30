/*
 * Source file for sending joystick position's data through UART
 */

/// Includes
	//#include "joystickSendUART.h"	//own header (it can be omitted, there are no public defines yet)
	#include <SI_EFM8BB3_Register_Enums.h>	//the mcu's register definitions

/// Defines
	#define JOYSTICK_LEFT_VOLTAGE 1973	//input voltage (in mVs), when joystick moved left
	#define JOYSTICK_RIGHT_VOLTAGE 2529	//input voltage (in mVs), when joystick moved right
	#define TOLERANCE_VOLTAGE 50	//+- tolerance voltage (in mVs) of joystick positions

/// Types
	typedef enum {DEFAULT, LEFT, RIGHT} JoystickPosition;		//the 3 used positions of the joystick

/// Utility function declarations
	int isInSymmetricRange(int value, int center, int range);	//determines, if an integer value is
																//in the given symmetric range

/// Main functions

	// Sends the joystick's position data through UART
	// IN: measureVoltage: the measure voltage on the joystick in mVs
	void sendJoystickPosUART(unsigned measuredVoltage) {

		JoystickPosition positionData = DEFAULT;	//stores the actual position of the joystick
													//(default is set, if not moved left or right)

		if(isInSymmetricRange(measuredVoltage, JOYSTICK_LEFT_VOLTAGE, 	//if the joystick is in left position
				TOLERANCE_VOLTAGE)){
			positionData = LEFT;
		}
		else if(isInSymmetricRange(measuredVoltage, JOYSTICK_RIGHT_VOLTAGE, 	//if the joystick is in right position
				TOLERANCE_VOLTAGE)){
			positionData = RIGHT;
		}

		SBUF1 = positionData;	//send the data out at UART1 (8-N-1, 115200, TX:P2.0, RX: P2.1)

	}

/// Utility function definitions

	// Determines, if an integer value is in the given symmetric range
	// IN:
	//		center: the center point of the symmetric range
	//		range: the expansion of the symmetric range
	// OUT: a C type boolean, that is value in the given range
	int isInSymmetricRange(int value, int center, int range) {
		return (
			value > center - range &&
			value < center + range
		);
	}
