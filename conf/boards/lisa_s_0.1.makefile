# Hey Emacs, this is a -*- makefile -*-
#
# lisa_s_0.1.makefile
#
# http://paparazzi.enac.fr/wiki/Lisa/S
#

BOARD=lisa_s
BOARD_VERSION=0.1
BOARD_CFG=\"boards/$(BOARD)_$(BOARD_VERSION).h\"

ARCH=stm32
$(TARGET).ARCHDIR = $(ARCH)
$(TARGET).LDSCRIPT=$(SRC_ARCH)/lisa-s.ld

# -----------------------------------------------------------------------

# default flash mode is via usb dfu bootloader (luftboot)
# other possibilities: JTAG, SWD, SERIAL
FLASH_MODE ?= SWD

#
#
# some default values shared between different firmwares
#
#

#
# default LED configuration
#
RADIO_CONTROL_LED  ?= 3
BARO_LED           ?= none
AHRS_ALIGNER_LED   ?= 2
GPS_LED            ?= none
SYS_TIME_LED       ?= 1

#
# default uart configuration
#
RADIO_CONTROL_SPEKTRUM_PRIMARY_PORT   ?= UART2
RADIO_CONTROL_SPEKTRUM_SECONDARY_PORT ?= none

MODEM_PORT ?= UART1
MODEM_BAUD ?= B57600

GPS_PORT ?= UART3
GPS_BAUD ?= B38400

#
# default actuator configuration
#
# you can use different actuators by adding a configure option to your firmware section
# e.g. <configure name="ACTUATORS" value="actuators_ppm/>
# and by setting the correct "driver" attribute in servo section
# e.g. <servo driver="Ppm">
#
ACTUATORS ?= actuators_pwm
