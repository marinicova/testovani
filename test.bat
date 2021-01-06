:: Zálohování souboru z pycharm na flash
@echo off
echo Zálohá vybraných souboru na flash
set /P soubor=Název souboru nebo N (ukončení)
if /I "%soubor%" EQU "N" GOTO :exit

:: Teď budete vyzváný, aby ste napsali adresář kde se daný soubor nachazí
set /P uloziste=Adresář daného souboru
cd C:\Users\janka\pycharm
chdir "%uloziste%"
echo Přesouva se soubor :-)
xcopy "%soubor%" e:\ /i > null
pause

:exit
EXIT
