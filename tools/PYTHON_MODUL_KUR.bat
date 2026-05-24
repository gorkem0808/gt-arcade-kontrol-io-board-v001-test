@echo off
cd /d "%~dp0..\pc_app"
py -m pip install -r requirements.txt
pause
