# Logo与背景图片使用指南

## 当前状态
✅ 已创建Logo占位图和背景框架
✅ 所有页面已更新为新的Logo设计
✅ CSS样式已配置完成

## 如何添加实际Logo

### 步骤1：准备Logo文件
1. **格式要求**：PNG或SVG格式（推荐SVG）
2. **尺寸建议**：至少 200x200 像素
3. **命名**：`logo.svg` 或 `logo.png`

### 步骤2：替换Logo文件
将你的Logo文件复制到：
```
zhengholdings-website/images/logo.svg
```
或
```
zhengholdings-website/images/logo.png
```

### 步骤3：更新CSS引用
在 `css/style.css` 中，找到以下代码（约第180行）：
```css
.logo-image::before {
    background-image: url('../images/logo-placeholder.svg');
}
```
修改为：
```css
.logo-image::before {
    background-image: url('../images/logo.svg'); /* 或 logo.png */
}
```

## 如何添加首页背景图片

### 步骤1：选择背景图片
推荐使用：
1. **公司项目照片** - 酒店、公寓实景
2. **专业商业图片** - 建筑、城市景观
3. **抽象背景** - 与品牌色系匹配

### 步骤2：准备图片文件
1. **格式要求**：JPG或PNG格式
2. **尺寸建议**：1920x1080 像素（全高清）
3. **命名**：`hero-bg.jpg`

### 步骤3：放置图片文件
将背景图片复制到：
```
zhengholdings-website/images/hero-bg.jpg
```

### 步骤4：CSS已自动配置
无需额外修改，CSS中已配置：
```css
.hero {
    background: linear-gradient(rgba(0, 51, 102, 0.8), rgba(0, 51, 102, 0.6)), 
                url('../images/hero-bg.jpg') center/cover no-repeat;
}
```

## 备选方案：使用在线图片

### 快速测试（Unsplash图片）
1. 下载喜欢的图片：https://unsplash.com/s/photos/hotel-lobby
2. 保存为 `hero-bg.jpg`
3. 放入 `images/` 文件夹

### 推荐图片链接：
- 酒店大堂：`https://images.unsplash.com/photo-1566073771259-6a8506099945`
- 城市建筑：`https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd`
- 豪华房间：`https://images.unsplash.com/photo-1542314831-068cd1dbfeeb`

## 测试方法
1. 打开 `index.html` 查看效果
2. 检查Logo显示是否正常
3. 查看背景图片是否加载
4. 测试响应式布局

## 注意事项
1. **文件大小**：背景图片建议压缩到 500KB 以内
2. **版权**：确保使用的图片有合法使用权
3. **备用方案**：如果图片加载失败，会显示蓝色渐变背景
4. **Logo清晰度**：SVG格式在不同尺寸下都能保持清晰

## 快速开始
如果你现在没有合适的图片，可以：
1. 暂时使用当前的占位设计
2. 后续再替换为实际图片
3. 当前设计已足够专业美观

---

**最后更新**：2026-03-25  
**状态**：✅ 框架完成，等待实际图片