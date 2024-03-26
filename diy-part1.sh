#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git istore https://github.com/linkease/istore' feeds.conf.default

#git clone https://github.com/fw876/helloworld.git package/ssr
#git clone https://github.com/zijieKwok/istoreos-nas-packages.git package/istoreos-nas-packages
git clone https://github.com/animegasan/luci-app-quickstart package/luci-app-quickstart
git clone https://github.com/linkease/istore.git package/istoreos
rm -rf feeds/applications/luci-app-passwall
git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
#rm -rf feeds/net/packages/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/zxl78585/luci-app-filetransfer.git package/luci-app-filetransfer
#rm -rf feeds/packages/net/v2ray-geodata
#git clone https://github.com/godros/luci-app-godproxy.git ./package/lean/luci-app-godproxy
#git clone https://github.com/garypang13/luci-app-dnsfilter.git ./package/lean/luci-app-dnsfilter
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git ./package/lean/luci-app-jd-dailybonus
#git clone https://github.com/iwrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
