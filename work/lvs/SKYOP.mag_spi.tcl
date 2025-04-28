#set VDD AVDD
#set GND AVSS
set SUB 0
set OPATH lvs/ext
load ../design/JNW_GR01_SKY130A/SKYOP.mag.mag

extract path ${OPATH}
extract all
ext2spice lvs
ext2spice -p ${OPATH} -o lvs/SKYOP.mag.spi
quit
