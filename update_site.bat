@echo off
echo ===================================================
echo  Meraki Farm Website Update Tool
echo ===================================================
echo.
echo Adding all changes...
git add .
echo.
echo Committing changes...
set /p msg="Enter a brief message about your changes (e.g., Update SEO): "
git commit -m "%msg%"
echo.
echo Uploading to GitHub...
git push origin main
echo.
echo ===================================================
echo  Update Complete! Your site will be live in a few minutes.
echo ===================================================
pause
