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

git clone https://github.com/fw876/helloworld.git package/ssr
#git clone https://github.com/firker/diy-ziyong.git package/diy-ziyong
git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/v2rayA/v2raya-openwrt.git package/v2raya-openwrt
find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
#git clone https://github.com/sbwml/luci-app-mosdns package/mosdns
#git clone https://github.com/godros/luci-app-godproxy.git ./package/lean/luci-app-godproxy
#git clone https://github.com/garypang13/luci-app-dnsfilter.git ./package/lean/luci-app-dnsfilter
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git ./package/lean/luci-app-jd-dailybonus
#git clone https://github.com/iwrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
