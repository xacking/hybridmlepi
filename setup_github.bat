@echo off
REM One-time push of this repo to GitHub. Run from inside the hybridmlepi\ folder.
REM Prereqs: git installed and GitHub auth configured (gh auth login / PAT / SSH).

rmdir /s /q .git 2>nul

git init -b main
git add -A
git commit -m "Initial commit: explainable ensemble epidemic-prediction code, results, and docs"
git remote add origin https://github.com/xacking/hybridmlepi.git
git push -u origin main
