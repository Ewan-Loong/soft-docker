#!/bin/bash

SR_PATH='./docker/starrocks-3.2.6'

echo 'FE START'
$SR_PATH/fe/bin/start_fe.sh --daemon
sleep 10
if echo $(jps) | grep -q "StarRocksFE"; then
    echo "FE started successfully"
else
    echo "Failed to start FE."
    exit 1
fi

echo 'BE START'
$SR_PATH/be/bin/start_be.sh --daemon

echo 'started completes'
