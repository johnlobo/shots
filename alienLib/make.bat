del *.rel
del *.lib

sdasz80 -o alienlib.s
sdasz80 -o sprite_clipping.s

sdar rc alienlib.lib alienlib.rel sprite_clipping.rel

copy alienlib.lib c:\retro\SDCC\lib\z80
copy alienlib.h c:\retro\SDCC\include

pause