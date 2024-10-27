#!/bin/bash

# 自定义脚本
# ImmortalWrt
# 获取Syncthing插件
git clone -b openwrt-23.05 https://github.com/immortalwrt/luci temp_luci && \
mkdir -p package/luci-app-syncthing && \
cp -r temp_luci/applications/luci-app-syncthing/*  package/luci-app-syncthing/ && \
rm -rf temp_luci
