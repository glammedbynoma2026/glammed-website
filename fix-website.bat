@echo off
echo ========================================
echo  GLAMMED BY NOMA - WEBSITE FIX SCRIPT
echo ========================================
echo.

cd /d C:\Users\sonny\glammed-website

echo Step 1 - Pulling latest from GitHub...
git pull origin main
echo.

echo Step 2 - Checking files are in place...
if exist index.html (
  echo index.html found OK
) else (
  echo ERROR: index.html not found!
  echo Make sure you are in the correct folder
  pause
  exit
)

echo.
echo Step 3 - Pushing to GitHub...
git add .
git commit -m "fix service worker and vercel config"
git push origin main
echo.

echo ========================================
echo  DONE! Check Vercel in 60 seconds.
echo  Go to: https://glammedbynoma.com
echo  Press Ctrl+Shift+R to hard refresh
echo ========================================
pause
