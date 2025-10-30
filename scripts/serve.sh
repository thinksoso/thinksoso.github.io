#!/bin/bash

# Jekyll 本地预览脚本
# 使用方法: ./serve.sh [端口号]
# 默认端口: 4000

# 设置默认端口
PORT=${1:-4000}

echo "🚀 启动 Jekyll 本地预览服务器..."
echo "📁 项目目录: $(pwd)"
echo "🌐 访问地址: http://localhost:$PORT"
echo "⏹️  停止服务: 按 Ctrl+C"
echo ""

# 检查是否安装了 Bundler
if ! command -v bundle &> /dev/null; then
    echo "❌ 错误: 未找到 Bundler"
    echo "请先安装 Ruby 和 Bundler:"
    echo "  # macOS"
    echo "  brew install ruby"
    echo "  gem install bundler"
    echo ""
    echo "  # Windows (使用 RubyInstaller)"
    echo "  # 下载: https://rubyinstaller.org/"
    echo "  gem install bundler"
    exit 1
fi

# 检查 Gemfile 是否存在
if [ ! -f "Gemfile" ]; then
    echo "❌ 错误: 未找到 Gemfile"
    echo "请确保在 Jekyll 项目根目录下运行此脚本"
    exit 1
fi

# 安装依赖（如果需要）
echo "📦 检查并安装依赖..."
bundle install

# 启动 Jekyll 服务器
echo "🔄 启动服务器..."
bundle exec jekyll serve --host 0.0.0.0 --port $PORT --livereload
