#!/bin/bash

# 自定义脚本
# 获取Syncthing插件
git clone -b openwrt-23.05 https://github.com/coolsnowwolf/luci temp_luci && \
cp -r temp_luci/applications/luci-app-syncthing/* package/luci-app-syncthing/ && \
rm -rf temp_luci
