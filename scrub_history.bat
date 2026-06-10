@echo off
REM ============================================================
REM  Scrub ALL git history and replace the GitHub repo with a
REM  single clean commit of the current (raw-data-free) folder.
REM  Run from inside the hybridmlepi\ folder.
REM
REM  WARNING: this REWRITES history. Old commits (with raw data)
REM  become unreachable on 'main'. Anyone with a clone/fork must
REM  re-clone. Delete any forks separately.
REM ============================================================

rmdir /s /q .git 2>nul

git init -b main
git add -A
git commit -m "Clean repository: code, derived results, and docs (history reset to remove raw data)"
git remote add origin https://github.com/xacking/hybridmlepi.git

REM Force-replace the remote branch (overwrites the old history).
git push --force origin main

echo.
echo Done. The 'main' branch now has a single clean commit.
echo Next: on github.com, delete any other branches/tags that may
echo still reference old commits, and remove forks if any exist.
