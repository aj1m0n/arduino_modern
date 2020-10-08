#!/bin/bash

SERIALBORD=/dev/tty.usbserial-AI02RM14 #/dev/tty.usbserial-AI02RM14
PM= #disabled
PARTITION_SCHEME= #default
F_CPU= #240
FLASH_MODE= #dio
F_FLASH= #80
FLASH_SIZE= #4M
UPLOAD_SPEED= #921600
DEBUG_LEVEL= #verbose
SKECH_PATH= 

arduino-cli compile -v -p $SERIALBORD esp32:esp32:esp32:PSRAM=$PM,PartitionScheme=$PARTITION_SCHEME,CPUFreq=$F_CPU,FlashMode=$FLASH_MODE,FlashFreq=$F_FLASH,FlashSize=$FLASH_SIZE,UploadSpeed=$UPLOAD_SPEED,DebugLevel=$DEBUG_LEVEL $SKECH_PATH
arduino-cli upload -v -p $SERIALBORD --fqbn esp32:esp32:esp32:PSRAM=$PM,PartitionScheme=$PARTITION_SCHEME,CPUFreq=$F_CPU,FlashMode=$FLASH_MODE,FlashFreq=$F_FLASH,FlashSize=$FLASH_SIZE,UploadSpeed=$UPLOAD_SPEED,DebugLevel=$DEBUG_LEVEL $SKECH_PATH