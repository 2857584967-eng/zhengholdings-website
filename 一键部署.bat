@echo off
chcp 65001 > nul
echo.
echo ========================================
echo   正和控股官网 - 一键部署脚本
echo ========================================
echo.

REM 检查是否安装了Git
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 未检测到Git，请先安装Git
    echo 下载地址：https://git-scm.com/download/win
    pause
    exit /b 1
)

echo ✅ 检测到Git已安装
echo.

REM 切换到脚本所在目录
cd /d "%~dp0"

echo 📁 当前目录：%cd%
echo.

echo 📋 文件列表：
dir /b *.html
echo.

echo 🔄 初始化Git仓库...
git init
if %errorlevel% neq 0 (
    echo ❌ Git初始化失败
    pause
    exit /b 1
)

echo ✅ Git仓库初始化成功
echo.

echo 📝 添加所有文件...
git add .
if %errorlevel% neq 0 (
    echo ❌ 添加文件失败
    pause
    exit /b 1
)

echo ✅ 文件添加成功
echo.

echo 💾 提交更改...
git commit -m "Initial commit - 正和控股官网"
if %errorlevel% neq 0 (
    echo ❌ 提交失败
    pause
    exit /b 1
)

echo ✅ 提交成功
echo.

echo ========================================
echo   部署到GitHub Pages的步骤：
echo ========================================
echo.
echo 1. 访问 https://github.com/new
echo 2. 创建新仓库：zhengholdings-website
echo 3. 复制仓库URL（HTTPS格式）
echo 4. 回到此窗口继续
echo.
set /p GITHUB_URL=请输入GitHub仓库URL（如 https://github.com/用户名/zhengholdings-website.git）：

echo.
echo 🔗 连接到远程仓库...
git remote add origin "%GITHUB_URL%"
if %errorlevel% neq 0 (
    echo ❌ 连接远程仓库失败
    pause
    exit /b 1
)

echo ✅ 远程仓库连接成功
echo.

echo 🚀 推送到GitHub...
git push -u origin main
if %errorlevel% neq 0 (
    echo ❌ 推送失败，尝试创建main分支...
    git branch -M main
    git push -u origin main
)

echo.
echo ========================================
echo   🎉 部署完成！
echo ========================================
echo.
echo 接下来需要：
echo 1. 访问你的GitHub仓库：%GITHUB_URL%
echo 2. 点击"Settings" → "Pages"
echo 3. 选择分支：main，文件夹：/(root)
echo 4. 点击"Save"
echo 5. 等待1-2分钟
echo.
echo 你的网站地址将是：
echo https://你的用户名.github.io/zhengholdings-website/
echo.
pause