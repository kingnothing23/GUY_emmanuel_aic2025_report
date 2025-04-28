#set VDD AVDD
#set GND AVSS
#set SUB 0

set OPATH lpe/ext

load ../design/JNW_GR01_SKY130A/SKYOP.mag

flatten SKYOP_flat
load SKYOP_flat

select top cell
extract path ${OPATH}
extract all
#ext2sim labels on
#ext2sim -p ${OPATH}
ext2spice lvs
#ext2spice format ngspice
#ext2spice resistor off
ext2spice cthresh 0.01
ext2spice -p ${OPATH} -o lpe/SKYOP_lpe.spi
quit
