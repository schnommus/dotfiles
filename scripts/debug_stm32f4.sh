#/bin/bash
source ~/dev/echronos-core/setenv
arm-none-eabi-gdb $1\
 -ex "target remote localhost:3333"\
 -ex "monitor reset"\
 -ex "monitor halt"\
 -ex "load $1"\
 -ex "disconnect"\
 -ex "target remote localhost:3333"\
 -ex "monitor reset"\
 -ex "monitor halt"\
 -ex "monitor arm semihosting enable"
