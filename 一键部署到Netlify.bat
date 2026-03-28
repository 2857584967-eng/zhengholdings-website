@echo off
echo ========================================
echo   正和控股官网 - Netlify部署指南
echo ========================================
echo.
echo 步骤1：访问 Netlify
echo 打开浏览器访问：https://app.netlify.com
echo.
echo 步骤2：注册/登录账号
echo 使用GitHub、GitLab、Google或邮箱注册
echo.
echo 步骤3：导入项目
echo 1. 点击 "Add new site" -> "Import an existing project"
echo 2. 选择 "Git" 作为部署方式
echo 3. 选择 "Gitee" 作为Git提供商
echo 4. 授权Netlify访问您的Gitee账号
echo.
echo 步骤4：选择仓库
echo 1. 选择 guangdong-zhenghe-holdings_0/zhengholdings-website
echo 2. 点击 "Deploy site"
echo.
echo 步骤5：获取网址
echo 部署完成后，Netlify会提供类似这样的网址：
echo https://zhengholdings-website.netlify.app
echo 或 https://随机名称.netlify.app
echo.
echo ========================================
echo   本地预览（立即查看）：
echo ========================================
echo.
echo 方法A：直接双击 index.html
echo 进入 zhengholdings-website 文件夹，双击 index.html
echo.
echo 方法B：使用Python本地服务器
echo 1. 打开命令提示符
echo 2. 输入：cd zhengholdings-website
echo 3. 输入：python -m http.server 8000
echo 4. 浏览器访问：http://localhost:8000
echo.
echo ========================================
echo   Gitee代码仓库：
echo ========================================
echo 网址：https://gitee.com/guangdong-zhenghe-holdings_0/zhengholdings-website
echo.
echo 按任意键打开本地网站...
pause > nul
start index.html
echo.
echo 网站已打开！如需部署到公网，请按上述Netlify步骤操作。
pause