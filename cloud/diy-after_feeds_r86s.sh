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


cp cloud/banner_r86s package/base-files/files/etc/banner
# Modify default IP
sed -i 's/OpenWrtx86/R86S/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.19.1/192.168.86.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
