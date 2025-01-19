---
layout: post
title:  "使用 Docker 部署 Jekyll 环境，并创建静态 GitHub Pages"
date:   2025-01-19 13:16:25 +0000
categories: jekyll update
---


步骤 1: 使用 Docker 部署 Jekyll 环境
在项目根目录下创建 `Dockerfile` 和 `docker-compose.yml` 文件，并根据需求配置。

步骤 2: 使用 `jekyll new .` 新建项目

步骤 2.1: 由于 `jekyll new` 命令会将文件夹内容重置，需要提前将 `docker-compose.yml` 所在文件夹内的文件转移

```bash
mv Dockerfile ../Dockerfile_temp
mv docker-compose.yml ../docker-compose_temp.yml
```

步骤 2.2: 运行 `jekyll new .` 命令新建项目

```bash
jekyll new .
```

步骤 2.3: 将 Dockerfile 和 docker-compose.yml 文件移回根目录

```bash
mv ../Dockerfile_temp Dockerfile
mv ../docker-compose_temp.yml docker-compose.yml
```

步骤 3: 使用 `jekyll build` 创建初始化文件

在项目根目录下运行以下命令生成静态网站文件：

```bash
jekyll build
```

步骤 4: 在 `_posts` 同级目录内新建 `assets` 文件夹，并复制 `_site` 文件夹内的 `main.css` 放置于其中

```bash
mkdir -p assets
cp _site/assets/main.css assets/
```
