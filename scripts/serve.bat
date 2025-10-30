@echo off
REM Jekyll 本地预览脚本 (Windows 版本)
REM 使用方法: serve.bat [端口号]
REM 默认端口: 4000

setlocal enabledelayedexpansion

REM 设置默认端口
if "%1"=="" (
    set PORT=4000
) else (
    set PORT=%1
)

echo 🚀 启动 Jekyll 本地预览服务器...
echo 📁 项目目录: %CD%
echo 🌐 访问地址: http://localhost:!PORT!
echo ⏹️  停止服务: 按 Ctrl+C
echo.

REM 检查是否安装了 Bundler
bundle --version >nul 2>&1
if errorlevel 1 (
    echo ❌ 错误: 未找到 Bundler
    echo 请先安装 Ruby 和 Bundler:
    echo   # 下载 RubyInstaller: https://rubyinstaller.org/
    echo   # 安装后运行: gem install bundler
    echo.
    pause
    exit /b 1
)

REM 检查 Gemfile 是否存在
if not exist "Gemfile" (
    echo ❌ 错误: 未找到 Gemfile
    echo 请确保在 Jekyll 项目根目录下运行此脚本
    pause
    exit /b 1
)

REM 安装依赖（如果需要）
echo 📦 检查并安装依赖...
bundle install

REM 启动 Jekyll 服务器
echo 🔄 启动服务器...
bundle exec jekyll serve --host 0.0.0.0 --port !PORT! --livereload

pause
