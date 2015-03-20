del *.rel
del *.lib
sdasz80 -o cpcrslib2.s
sdasz80 -o GphStr.s
sdasz80 -o Keyboard.s
sdasz80 -o GphStrStd.s
sdasz80 -o Sprites.s
sdasz80 -o Wyz.s

sdar rc cpcrslib2.lib cpcrslib2.rel GphStr.rel Keyboard.rel GphStrStd.rel Sprites.rel 
sdar rc cpcwyzlib.lib Wyz.rel

copy cpcrslib2.lib c:\retro\SDCC\lib\z80
copy cpcrslib2.h c:\retro\SDCC\include
copy cpcwyzlib.lib c:\retro\SDCC\lib\z80
copy cpcwyzlib.h c:\retro\SDCC\include

pause
