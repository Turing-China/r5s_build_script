#!/bin/bash

# 自定义脚本
# ImmortalWrt
# 获取Syncthing插件

# 输出当前路径
echo "当前路径: $(pwd)"

git clone -b openwrt-23.05 https://github.com/coolsnowwolf/luci temp_luci && \
mkdir -p package/luci-app-syncthing && \
cp -r temp_luci/applications/luci-app-syncthing/*  package/luci-app-syncthing/ && \
rm -rf temp_luci

# 指定要列出文件和目录的路径
TARGET_DIR="package/luci-app-syncthing"

# 检查目录是否存在
if [ -d "$TARGET_DIR" ]; then
    echo "目录 $TARGET_DIR 下的所有子目录和文件："
    find "$TARGET_DIR"
else
    echo "目录 $TARGET_DIR 不存在。"
fi
