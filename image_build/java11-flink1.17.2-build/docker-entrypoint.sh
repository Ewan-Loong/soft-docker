#!/bin/bash

if [ "$1" = "jobmanager" ]; then
    $FLINK_HOME/bin/jobmanager.sh start-foreground
elif [ "$1" = "taskmanager" ]; then
    $FLINK_HOME/bin/taskmanager.sh start-foreground
elif [ "$1" = "standalone" ]; then
    $FLINK_HOME/bin/start-cluster.sh
else
    echo "COMMAND ERROR"
fi