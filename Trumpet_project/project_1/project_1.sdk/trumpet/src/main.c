#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"

#include "cap_btn.h"

volatile unsigned int* led = (unsigned int*) XPAR_AXI_GPIO_0_BASEADDR;
volatile unsigned int* swt = (unsigned int*) XPAR_AXI_GPIO_1_BASEADDR;
volatile unsigned int* cap_btn = (unsigned int*) XPAR_I2C_CAP_BTN_AXI_CAP_BTN_GPIO_BASEADDR;

int main()
{
    init_platform();
//    init_cap_btn();

    xil_printf("start");

    while (1) {
//    	update_cap_btn_led(led, cap_btn);
		xil_printf("Swt: %d\n", (uint32_t) *swt);
		*led = *swt;
    	sleep(1);
    };

    cleanup_platform();
    return 0;
}