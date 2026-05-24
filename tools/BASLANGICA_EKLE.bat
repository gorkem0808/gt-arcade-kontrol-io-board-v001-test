@echo off
set STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
set TARGET=%STARTUP%\GT_ARCADE_KONTROL_IO_BOARD_V001.bat
(
echo @echo off
echo cd /d "%%USERPROFILE%%\Desktop\GT_ARCADE_KONTROL_IO_BOARD_V001_FIXED2\pc_app"
echo py gt_arcade_kontrol_io_v001.py
) > "%TARGET%"
echo Baslangica eklendi: %TARGET%
pause
