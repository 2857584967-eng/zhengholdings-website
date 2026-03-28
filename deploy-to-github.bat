@echo off
echo ========================================
echo 正和控股官网部署到GitHub Pages
echo ========================================
echo.

REM 设置GitHub Token（用户提供的）
set GITHUB_TOKEN=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
set GITHUB_USER=zhengholdings
set REPO_NAME=zhengholdings-website
set REPO_URL=https://%GITHUB_TOKEN%@github.com/%GITHUB_USER%/%REPO_NAME%.git

echo 1. 检查Git是否安装
git --version
if errorlevel 1 (
    echo 错误：Git未安装，请先安装Git
    pause
    exit /b 1
)

echo.
echo 2. 初始化Git仓库
if not exist ".git" (
    echo 初始化Git仓库...
    git init
    git remote add origin %REPO_URL%
) else (
    echo Git仓库已存在
    git remote set-url origin %REPO_URL%
)

echo.
echo 3. 配置Git凭据
git config user.name "广东正和控股"
git config user.email "929832171@qq.com"
git config credential.helper store

echo.
echo 4. 添加所有文件到暂存区
git add .

echo.
echo 5. 提交更改
git commit -m "正和控股官网完整版上线 - %date% %time%
- 包含6个完整页面
- 响应式设计
- SEO优化
- 公司资料完整填充
- 投资优势详细展示
- 联系表单功能"

echo.
echo 6. 创建并切换到main分支
git branch -M main

echo.
echo 7. 推送到GitHub
echo 使用GitHub Token进行身份验证...
git push -u origin main --force

if errorlevel 1 (
    echo.
    echo 推送失败，检查网络连接和Token权限...
    echo 尝试创建GitHub仓库...
    echo curl -H "Authorization: token %GITHUB_TOKEN%" ^
    echo      -d "{\"name\":\"%REPO_NAME%\",\"description\":\"广东正和控股官方网站\",\"private\":false}" ^
    echo      https://api.github.com/user/repos
)

echo.
echo 8. 部署完成！
echo.
echo ========================================
echo 网站访问地址：
echo https://%GITHUB_USER%.github.io/%REPO_NAME%/
echo.
echo GitHub仓库地址：
echo https://github.com/%GITHUB_USER%/%REPO_NAME%
echo ========================================
echo.
echo 注意：需要在GitHub仓库设置中开启Pages服务
echo 1. 访问仓库页面：https://github.com/%GITHUB_USER%/%REPO_NAME%
echo 2. 点击"Settings" -> "Pages"
echo 3. Source选择：Deploy from a branch
echo 4. Branch选择：main，文件夹选择：/(root)
echo 5. 点击"Save"
echo.
echo 等待1-2分钟，网站即可访问
echo.
pause