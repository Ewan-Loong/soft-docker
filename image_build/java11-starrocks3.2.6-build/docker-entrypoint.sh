#!/bin/bash

if [ "$1" = "fe" ]; then
    $SR_HOME/fe/bin/start_fe.sh --daemon
elif [ "$1" = "be" ]; then
    $SR_HOME/be/bin/start_be.sh --daemon
else
    echo "COMMAND ERROR"
    exec /bin/bash
fi


# 判断容器关闭
while sleep 60; do
    ps aux | grep starrocks | grep -q -v grep
    PRO_STATUS=$?

    if [ ${PRO_STATUS} -ne 0 ]; then
        echo "sr_server stop done"
        exit 1;
    fi
done
