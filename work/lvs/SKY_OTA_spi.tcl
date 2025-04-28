#set VDD AVDD
#set GND AVSS
set SUB 0
set OPATH lvs/ext
load ../design/JNW_GR01_SKY130A/SKY_OTA.mag

extract path ${OPATH}
extract all
ext2spice lvs
ext2spice -p ${OPATH} -o lvs/SKY_OTA.spi
quit
