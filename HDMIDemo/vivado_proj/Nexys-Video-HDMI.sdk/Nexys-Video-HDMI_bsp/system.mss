
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 6.7
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER profile_timer = axi_timer_0
 PARAMETER sleep_timer = axi_timer_0
 PARAMETER stdin = axi_uartlite_0
 PARAMETER stdout = axi_uartlite_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.7
 PARAMETER HW_INSTANCE = microblaze_0
 PARAMETER compiler_flags =  -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-mul -mxl-multiply-high -mhard-float -mxl-float-convert -mxl-float-sqrt -mno-xl-soft-div -mcpu=v10.0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = axi_dynclk_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.3
 PARAMETER HW_INSTANCE = axi_gpio_video
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = axi_timer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.2
 PARAMETER HW_INSTANCE = axi_uartlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axivdma
 PARAMETER DRIVER_VER = 6.5
 PARAMETER HW_INSTANCE = axi_vdma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = microblaze_0_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.2
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.2
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_ilmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mig_7series
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = mig_7series_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = vtc
 PARAMETER DRIVER_VER = 7.2
 PARAMETER HW_INSTANCE = v_tc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = vtc
 PARAMETER DRIVER_VER = 7.2
 PARAMETER HW_INSTANCE = v_tc_1
END


