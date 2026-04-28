@echo off
rem bopo-fix CLI shim — portable version using %~dp0 (this script's own dir).
rem Resolves the venv Python + bopo_fix.py relative to where this .cmd file
rem lives, so it works regardless of where the repo is cloned, as long as the
rem .venv lives next to it (created by `python -m venv .venv` in the repo root).
rem
rem Usage:
rem   bopo-fix "rup wu0 wu0 fu4 5p cl3!"
rem   echo "rup" | bopo-fix
rem   bopo-fix --input-file in.txt --output-file out.txt
"%~dp0.venv\Scripts\python.exe" "%~dp0bopo_fix.py" %*
