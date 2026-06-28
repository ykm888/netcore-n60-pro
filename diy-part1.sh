#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# ===== 1. 添加科学上网 feeds (SSR Plus+ & Xray) =====
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# ===== 2. 添加 Docker  feeds =====
# Docker 官方 OpenWrt 源（包含 docker-ce, dockerd 等）
echo 'src-git docker https://github.com/lisaac/luci-app-dockerman.git' >>feeds.conf.default
# 如果上面这个源不行，可备选使用以下源（二选一，不要同时启用）：
# echo 'src-git dockerman https://github.com/lisaac/luci-app-dockerman.git' >>feeds.conf.default

# ===== 3. （可选）AdGuardHome 源（如果不需要可注释掉） =====
# git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
# chmod -R 755 ./package/luci-app-adguardhome/*

# ===== 4. 其他可选 feeds（按需启用） =====
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git openclash https://github.com/vernesong/OpenClash.git' >>feeds.conf.default
