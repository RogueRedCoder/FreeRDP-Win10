@echo off
pip install psutil --quiet
pip install requests --quiet
curl -s -L -o loop.py https://raw.githubusercontent.com/AloneBoredDeveloper/FreeRDP-Win10/refs/heads/main/loop.py
python loop.py
