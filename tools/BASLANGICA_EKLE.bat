@echo off
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "TARGET=%STARTUP%\GT_ARCADE_KONTROL_IO_BOARD_V001.bat"
(
  echo @echo off
  echo cd /d "%%USERPROFILE%%\Desktop\gt_arcade_kontrol_io_board_v001_FIXED_ROOT\pc_app"
  echo py gt_arcade_kontrol_io_v001.py
) > "%TARGET%"
echo Baslangica eklendi: %TARGET%
pause
