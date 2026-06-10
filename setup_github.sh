#!/usr/bin/env bash
# One-time push of this repo to GitHub. Run from inside the hybridmlepi/ folder.
# Prereqs: git installed, and you are signed in to GitHub (gh auth login, or a
# Personal Access Token / SSH key configured).
set -e

# 0) Remove any partial .git left by the file-sync sandbox, start clean.
rm -rf .git

# 1) Initialise and commit.
git init -b main
git add -A
git commit -m "Initial commit: explainable ensemble epidemic-prediction code, results, and docs"

# 2) Point at your repo (HTTPS shown; swap for SSH if you prefer).
git remote add origin https://github.com/xacking/hybridmlepi.git

# 3) Push. If the repo already has commits, use 'git push -u origin main --force'
#    only if you intend to overwrite it.
git push -u origin main
