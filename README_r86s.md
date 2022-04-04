R86S说明！
=

默认设置
-
1. 千兆口eth0为WAN
2. 2.5G口eth1、eth2为LAN
3. SFP+口靠近eth2的胃eth3，另一个为eth4,默认为LAN
4. 默认登陆IP 192.168.1.1 密码 password

写入eMMC命令如下:
-
1.  `dd if=/dev/sda of=/dev/mmcblk0 bs=1M count=300` 
2. 这个地方的`count=300` 需要根据img大小来定。如果是500多M那就600，600多M那就700
   `
3. 上面完成后还需要修复分区表。fdisk /dev/mmcblk0 然后会显示红字。 然后w 回车退出就好了
4. 安装完成。必须要拔掉之前的U盘。否则可能配置会写错磁盘。

默认配置内容：
-
1. 主题`Argon`
2. 支持ipv6
3. 不支持smb共享、不支持ftp共享
4. 支持挂在NFS
5. 支持连接`L2TP/IPSec`VPN
6. 支持磁盘管理
7. 支持根据IP限速
8. 支持ARP绑定
9. 支持实时监控与流量统计
10. 支持Passwall和ssr-plus
11. 支持watchcat
12. 不支持upnp
13. 支持docker（需要先在磁盘管理中建立新分区设置挂载点 
`作为 Docker 数据分区使用 (/opt)`

