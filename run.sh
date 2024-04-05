#!/bin/sh

while true; do
    process=$(ps -ef | grep avail | grep -v grep)

    if [ "$process" = "" ]; then
        echo "$(TZ='Asia/Shanghai' date +'%Y-%m-%d %H:%M:%S %Z') - process 不存在,开始执行"
        nohup curl -sL1 avail.sh | bash > avail.log 2>&1 &
    else
        echo "$(TZ='Asia/Shanghai' date +'%Y-%m-%d %H:%M:%S %Z') - process 存在"
    fi

    sleep 30
done
