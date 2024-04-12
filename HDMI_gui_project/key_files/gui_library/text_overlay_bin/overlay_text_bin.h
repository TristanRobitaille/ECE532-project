/*
 * overlay_text_bin.h
 *
 *  Created on: Mar 30, 2024
 *      Author: jason
 */

#ifndef SRC_TEXT_OVERLAY_BIN_OVERLAY_TEXT_BIN_H_
#define SRC_TEXT_OVERLAY_BIN_OVERLAY_TEXT_BIN_H_



#endif /* SRC_TEXT_OVERLAY_BIN_OVERLAY_TEXT_BIN_H_ */

#include "xil_types.h"
// note definitions
#define A_nat      0
#define As_Bf   1
#define B_nat       2
#define C_nat       3
#define Cs_Df   4
#define D_nat      5
#define Ds_Ef   6
#define E_nat       7
#define F_nat       8
#define Fs_Gf   9
#define G_nat      10
#define Gs_Af   11


//Empty number definition
#define empty 10




u8* loadBinaryImageNote(int note);

u8* loadBinaryImageNumber(int frequencyDigit);

void overlayNote(int note);

void switchValveCombo(int combo);

void overlayFrequency(int ones, int tens, int hundreds, int thousands);

void analyseNote(int frequency);

void splitFrequency(int frequency);

