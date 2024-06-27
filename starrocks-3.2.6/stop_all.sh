#!/bin/bash

SR_PATH='./docker/starrocks-3.2.6'

echo 'FE\BE STOP'

$SR_PATH/fe/bin/stop_fe.sh
$SR_PATH/be/bin/stop_be.sh

echo 'stop completes'
