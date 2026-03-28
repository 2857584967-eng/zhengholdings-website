# 正和控股官网 - 部署指南

## 项目概述
这是一个响应式、可访问的公司官网，展示广东正和控股有限公司的业务、投资优势和服务。

## 网站特点
- ✅ 响应式设计（手机、平板、电脑）
- ✅ SEO优化（结构化数据、元标签）
- ✅ 无障碍访问支持
- ✅ 高性能（优化CSS/JS）
- ✅ 完整的业务展示
- ✅ 在线咨询功能

## 文件结构
```
zhengholdings-website/
├── index.html          # 首页
├── about.html          # 关于我们
├── business.html       # 业务板块
├── projects.html       # 项目展示
├── investment.html     # 投资优势（新增）
├── contact.html        # 联系我们（新增）
├── css/
│   └── style.css      # 样式文件
├── js/
│   └── main.js        # JavaScript文件
├── images/            # 图片资源
├── robots.txt         # 搜索引擎爬虫规则
├── sitemap.xml        # 网站地图
├── netlify.toml       # Netlify部署配置
└── CNAME              # 自定义域名配置
```

## 部署方式

### 方式一：Gitee Pages（推荐）
1. **运行部署脚本**
   ```
  双击运行 deploy-to-gitee.bat
   ```

2. **开启Gitee Pages**
   - 访问：https://gitee.com/guangdong-zhenghe-holdings_0/zhengholdings-website
   - 点击"服务" → "Gitee Pages"
   - 选择分支：`main`
   - 点击"启动"

3. **访问地址**
   - https://guangdong-zhenghe-holdings_0.gitee.io/zhengholdings-website/

### 方式二：Netlify（国际访问）
1. **注册Netlify账号**：https://netlify.com
2. **拖拽项目文件夹**到Netlify部署区域
3. **自动部署完成**
4. **访问地址**：自动生成的.netlify.app域名

### 方式三：GitHub Pages
1. **创建GitHub仓库**
2. **推送代码**
   ```bash
   git remote add github https://github.com/用户名/仓库名.git
   git push github main
   ```
3. **开启GitHub Pages**
   - Settings → Pages → Source: main branch
4. **访问地址**：https://用户名.github.io/仓库名/

## 本地预览
1. **使用Python快速服务器**
   ```bash
   python -m http.server 8000
   ```
   访问：http://localhost:8000

2. **使用VS Code Live Server**
   - 安装Live Server扩展
   - 右键index.html → Open with Live Server

## 配置说明

### 1. 公司信息修改
- **联系方式**：编辑各HTML文件中的电话、邮箱、地址
- **业务内容**：根据实际业务更新business.html
- **项目案例**：更新projects.html中的真实案例

### 2. SEO优化
- 已添加结构化数据（Schema.org）
- 已配置meta标签
- 已创建sitemap.xml和robots.txt

### 3. 图片优化
- 建议图片尺寸：1200×800px
- 格式：WebP或JPEG
- 压缩工具：TinyPNG、Squoosh

### 4. 自定义域名
1. 购买域名（阿里云、腾讯云）
2. 在Gitee Pages设置中添加域名
3. 配置DNS解析
4. 更新CNAME文件

## 维护指南

### 内容更新
1. 修改对应HTML文件
2. 运行部署脚本
3. 检查网站更新

### 样式修改
1. 编辑css/style.css
2. 测试响应式布局
3. 部署更新

### 功能添加
1. 在js/main.js中添加JavaScript
2. 在HTML中引入
3. 测试功能

## 技术支持
- **问题反馈**：929832171@qq.com
- **紧急联系**：188-1915-3204
- **更新日志**：查看commit历史

## 许可证
© 2024 广东正和控股有限公司 版权所有