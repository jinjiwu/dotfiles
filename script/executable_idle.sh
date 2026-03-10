#!/bin/bash

# 1. 定义锁屏并熄屏的复合命令
# 先调用 Noctalia 锁屏，成功后立刻通知 niri 关闭显示器电源
LOCK_AND_OFF="qs -c noctalia-shell ipc call lockScreen lock && niri msg action power-off-monitors"

# 2. 启动 swayidle
swayidle -w \
    timeout 300 "$LOCK_AND_OFF" \
    resume 'niri msg action power-on-monitors' \
    before-sleep "$LOCK_AND_OFF"