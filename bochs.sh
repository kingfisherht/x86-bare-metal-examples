nasm -f bin -o $1.img $1.asm
RUN_FILE=$1.img
#echo $RUN_FILE
bochs \
    -qf /dev/null \
    'ata0-master: type=disk, path="'${RUN_FILE}'", mode=flat, cylinders=1, heads=1, spt=1' \
    'boot: disk' \
    'display_library: sdl' \
    'megs: 128'
