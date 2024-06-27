#!/bin/bash
/opt/hadoop/bin/hdfs journalnode &

/opt/hadoop/bin/hdfs namenode &

sleep 5
/opt/hadoop/bin/hdfs datanode

# 强制启动 node1 为 active
# hdfs haadmin -transitionToActive node1

# 手动执行故障转移
# hdfs haadmin -failover nn1 nn2
