#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i "s/ImmortalWrt/LEDE/g" package/base-files/files/bin/config_generate
sed -i "s/set luci.main.mediaurlbase/#set luci.main.mediaurlbase/g" feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/emortal/default-settings/files/99-default-settings
#sed -i "s/auto/'zh_cn'/g" feeds/luci/modules/luci-base/root/etc/config/luci
#sed -i "/config internal languages/a\option zh_cn '简体中文 (Simplified Chinese)'\noption en  'English'" feeds/luci/modules/luci-base/root/etc/config/luci
#sed -i "s/config internal languages/config internal languages\noption zh_cn '简体中文 (Simplified Chinese)'\noption en  'English'/g" feeds/luci/modules/luci-base/root/etc/config/luci

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
rm -rf ./package/diy-ziyong/theme
rm -rf ./package/diy-ziyong/luci-app-wrtbwmon-zh
rm -rf ./package/diy-ziyong/wrtbwmon
# rm -rf ./package/diy-ziyong/adguardhome
#rm -rf ./feeds/packages/net/adguardhome
#rm -rf ./feeds/packages/net/smartdns
#rm -rf ./feeds/packages/net/mosdns
rm -rf ./feeds/luci/applications/luci-app-passwall
rm -rf ./feeds/luci/applications/luci-app-ssr-plus
rm -rf ./feeds/luci/applications/luci-app-openclash
#rm -rf ./feeds/luci/applications/luci-app-smartdns
#rm -rf ./feeds/luci/applications/luci-app-adbyby-plus
