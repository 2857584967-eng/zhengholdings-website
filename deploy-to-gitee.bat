@echo off
echo ========================================
echo 正和控股官网部署到Gitee Pages
echo ========================================
echo.

REM 设置变量
set GITEE_TOKEN=fa13979d8f041064d7329b0fa2d93909
set REPO_URL=https://gitee.com/guangdong-zhenghe-holdings_0/zhengholdings-website.git
set DEPLOY_BRANCH=main

echo 1. 检查Git是否安装
git --version
if errorlevel 1 (
    echo 错误：Git未安装，请先安装Git
    pause
    exit /b 1
)

echo.
echo 2. 初始化Git仓库（如果不存在）
if not exist ".git" (
    echo 初始化Git仓库...
    git init
    git remote add origin %REPO_URL%
) else (
    echo Git仓库已存在
)

echo.
echo 3. 配置Git凭据
git config user.name "广东正和控股"
git config user.email "929832171@qq.com"

echo.
echo 4. 添加所有文件到暂存区
git add .

echo.
echo 5. 提交更改
git commit -m "更新官网内容 - %date% %time%"

echo.
echo 6. 推送到Gitee
echo 使用Token进行身份验证...
git push https://%GITEE_TOKEN%@gitee.com/guangdong-zhenghe-holdings_0/zhengholdings-website.git %DEPLOY_BRANCH% --force

if errorlevel 1 (
    echo.
    echo 推送失败，尝试设置远程仓库...
    git remote set-url origin https://%GITEE_TOKEN%@gitee.com/guangdong-zhenghe-holdings_0/zhengholdings-website.git
    git push origin %DEPLOY_BRANCH% --force
)

echo.
echo 7. 部署完成！
echo.
echo ========================================
echo 网站访问地址：
echo https://guangdong-zhenghe-holdings_0.gitee.io/zhengholdings-website/
echo.
echo Gitee仓库地址：
echo https://gitee.com/guangdong-zhenghe-holdings_0/zhengholdings-website
echo ========================================
echo.
echo 注意：需要在Gitee仓库设置中开启Pages服务
echo 1. 访问仓库页面
echo 2. 点击"服务" -> "Gitee Pages"
echo 3. 选择部署分支（main）
echo 4. 点击"启动"
echo.
pause