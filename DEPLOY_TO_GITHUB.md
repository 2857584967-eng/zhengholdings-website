# 部署到GitHub Pages指南

## 方法一：使用GitHub Desktop（最简单）

### 步骤1：创建GitHub仓库
1. 访问 https://github.com/new
2. 仓库名称：`zhengholdings-website`
3. 描述：正和控股官方网站
4. 选择：Public（公开）
5. 不要初始化README
6. 点击"Create repository"

### 步骤2：使用GitHub Desktop
1. 下载安装GitHub Desktop：https://desktop.github.com/
2. 打开GitHub Desktop
3. 点击"Clone a repository"
4. 选择刚才创建的仓库
5. 选择本地文件夹：`C:\Users\13535\.openclaw\workspace\zhengholdings-website`
6. 点击"Clone"

### 步骤3：提交并推送
1. 在GitHub Desktop中会看到所有文件
2. 填写提交信息："Initial commit - 正和控股官网"
3. 点击"Commit to main"
4. 点击"Push origin"

### 步骤4：启用GitHub Pages
1. 访问你的仓库页面：`https://github.com/你的用户名/zhengholdings-website`
2. 点击"Settings"（设置）
3. 左侧选择"Pages"（页面）
4. 在"Source"部分选择：`main`分支，`/(root)`文件夹
5. 点击"Save"（保存）
6. 等待1-2分钟，页面会显示你的网站地址

## 方法二：使用命令行

### 步骤1：初始化Git
```bash
cd "C:\Users\13535\.openclaw\workspace\zhengholdings-website"
git init
git add .
git commit -m "Initial commit - 正和控股官网"
```

### 步骤2：连接到GitHub
```bash
git remote add origin https://github.com/你的用户名/zhengholdings-website.git
git branch -M main
git push -u origin main
```

### 步骤3：启用GitHub Pages
同方法一的步骤4

## 网站地址
部署成功后，你的网站地址将是：
```
https://你的用户名.github.io/zhengholdings-website/
```

或者如果你设置了自定义域名：
```
https://zhengholdings.com
```

## 快速测试地址
如果你不想自己部署，可以使用这个测试地址（可能需要我帮你部署）：
```
https://zhengholdings.github.io/
```

## 注意事项
1. **首次部署**需要等待1-5分钟
2. **更新网站**：只需推送新的更改到GitHub
3. **自定义域名**：在GitHub Pages设置中配置CNAME记录
4. **HTTPS**：GitHub Pages自动提供SSL证书

## 需要我帮忙吗？
如果你需要我帮你：
1. 创建GitHub仓库
2. 配置部署
3. 设置自定义域名
4. 测试网站功能

请告诉我你的GitHub用户名，或者让我帮你完成部署。