@echo off
echo ========================================
echo 正和控股官网测试脚本
echo ========================================
echo.

echo 1. 检查文件完整性
echo.

if exist "index.html" (
    echo ✓ index.html 存在
) else (
    echo ✗ index.html 缺失
)

if exist "about.html" (
    echo ✓ about.html 存在
) else (
    echo ✗ about.html 缺失
)

if exist "business.html" (
    echo ✓ business.html 存在
) else (
    echo ✗ business.html 缺失
)

if exist "projects.html" (
    echo ✓ projects.html 存在
) else (
    echo ✗ projects.html 缺失
)

if exist "investment.html" (
    echo ✓ investment.html 存在
) else (
    echo ✗ investment.html 缺失
)

if exist "contact.html" (
    echo ✓ contact.html 存在
) else (
    echo ✗ contact.html 缺失
)

if exist "css\style.css" (
    echo ✓ style.css 存在
) else (
    echo ✗ style.css 缺失
)

if exist "js\main.js" (
    echo ✓ main.js 存在
) else (
    echo ✗ main.js 缺失
)

echo.
echo 2. 检查链接有效性
echo.

echo 检查首页链接...
findstr /C:"href=" index.html | findstr /v "http" | findstr /v "#" | findstr /v "mailto:" | findstr /v "tel:"

echo.
echo 3. 检查SEO元素
echo.

echo 检查标题标签...
findstr /C:"<title>" index.html
findstr /C:"<title>" about.html
findstr /C:"<title>" business.html

echo.
echo 检查meta描述...
findstr /C:"meta name=\"description\"" index.html

echo.
echo 4. 检查响应式设计
echo.

echo 检查viewport...
findstr /C:"viewport" index.html

echo.
echo 5. 文件大小检查
echo.

for %%f in (*.html) do (
    for /f %%s in ('dir "%%f" ^| find "%%f"') do (
        echo %%f: %%s
    )
)

echo.
echo 6. 创建本地预览
echo.

echo 启动本地服务器...
echo 访问 http://localhost:8080 查看网站
echo.
echo 按Ctrl+C停止服务器
echo.

REM 检查Python是否可用
python --version >nul 2>&1
if errorlevel 1 (
    echo Python未安装，无法启动本地服务器
    echo 请安装Python或使用其他HTTP服务器
    pause
    exit /b 0
)

REM 启动Python HTTP服务器
start "" python -m http.server 8080

echo.
echo ========================================
echo 测试完成！
echo ========================================
echo.
pause