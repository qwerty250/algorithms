@echo off

:loop 
1035_cmp.exe > in.txt
my.exe < in.txt  > myout.txt
std.exe < in.txt  > stdout.txt
fc myout.txt stdout.txt
if not errorlevel 1   goto loop
pause
goto loop