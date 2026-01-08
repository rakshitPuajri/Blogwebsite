@echo off
REM Deploy script for Windows
REM Deploys the blog to your chosen platform

echo.
echo ========================================
echo    Blog Deployment Helper
echo ========================================
echo.

echo Available deployment options:
echo.
echo 1. GitHub Pages (Free, auto-deploy)
echo 2. Netlify (Easy setup, recommended)
echo 3. Vercel (Optimized)
echo 4. Manual build only
echo.

setlocal enabledelayedexpansion

set /p choice="Choose option (1-4): "

if "%choice%"=="1" (
    echo.
    echo Building for GitHub Pages...
    call npm run build
    echo.
    echo Next steps:
    echo 1. git add .
    echo 2. git commit -m "Deploy blog"
    echo 3. git push origin main
    echo 4. Check GitHub Actions for deployment status
    echo.
) else if "%choice%"=="2" (
    echo.
    echo Deploying to Netlify...
    npm install -g netlify-cli
    call netlify deploy --prod
    echo.
    echo ✓ Deployment complete!
    echo.
) else if "%choice%"=="3" (
    echo.
    echo Deploying to Vercel...
    npm install -g vercel
    call vercel --prod
    echo.
    echo ✓ Deployment complete!
    echo.
) else if "%choice%"=="4" (
    echo.
    echo Building site for production...
    call npm run build
    echo.
    echo ✓ Build complete!
    echo Files are in _site/ directory
    echo.
) else (
    echo Invalid choice. Please run again.
)

pause
