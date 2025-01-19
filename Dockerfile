# 使用 Python 3.13 slim 基础镜像
FROM python:3.13-slim-bookworm

# 设置工作目录
WORKDIR /srv/app

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    build-essential \
    ruby-full \
    && rm -rf /var/lib/apt/lists/*

# 安装依赖
RUN gem install bundler
RUN gem install jekyll

# 设置工作目录权限
RUN chown -R root:root /srv/app

# 安装 Minima 最新版本
# RUN echo 'source "https://rubygems.org"\ngem "minima", "~> 2.5"' > Gemfile
# RUN bundle install


# 默认命令为保持前台进程
CMD ["tail", "-f", "/dev/null"]
