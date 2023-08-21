# turndhcp4openwrt
a dhcp tool for openwrt

目标：用于openwrt开启或关闭dhcp唯一授权

背景：当openwrt作为主路由时，为局域网内上网设备提供dhcp服务，当设备获取IP后，可以关闭dhcp服务，从而使其他设备可以从其他dhcp服务上获取IP，从而实现同一网内部分设备上外网，其他设备上内网的需求

用法： -h /h 显示帮助
      -c /c 关闭dhcp唯一授权
      -o /o 开启dhcp唯一授权，此时即使网内有其他dhcp服务，但设备仍然会从openwrt处获取IP
