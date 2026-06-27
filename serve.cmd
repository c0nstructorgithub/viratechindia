@echo off
REM One-click local preview for the Viratech mirror.
REM Serves this folder at http://127.0.0.1:8080/ and opens it in your browser.
cd /d "%~dp0"
echo Starting local preview server at http://127.0.0.1:8080/
echo Press Ctrl+C to stop.
start "" "http://127.0.0.1:8080/"
python -m http.server 8080 --bind 127.0.0.1
