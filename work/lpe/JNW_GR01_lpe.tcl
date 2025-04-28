#set VDD AVDD
#set GND AVSS
#set SUB 0

set OPATH lpe/ext

load ../design/JNW_GR01_SKY130A/JNW_GR01.mag

flatten JNW_GR01_flat
load JNW_GR01_flat

select top cell
extract path ${OPATH}
extract all
#ext2sim labels on
#ext2sim -p ${OPATH}
ext2spice lvs
#ext2spice format ngspice
#ext2spice resistor off
ext2spice cthresh 0.01
ext2spice -p ${OPATH} -o lpe/JNW_GR01_lpe.spi
quit
