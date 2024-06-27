FROM ubuntu:20.04
# 安装java11 配置环境变量
ADD jdk-11.0.23_linux-x64_bin.tar.gz /usr/local
ENV JAVA_HOME=/usr/local/jdk-11.0.23 JRE_HOME=/usr/local/jdk-11.0.23/jre \
    CLASSPATH=${CLASSPATH}:/usr/local/jdk-11.0.23/lib:/usr/local/jdk-11.0.23/jre/lib \
	PATH=${PATH}:/usr/local/jdk-11.0.23/lib
# 安装flink1.17.2配置环境变量 连接器
ADD flink-1.17.2-bin-scala_2.12.tgz /opt
ENV FLINK_HOME=/opt/flink-1.17.2
COPY --chmod=777 docker-entrypoint.sh /
COPY ./connectors/* /opt/flink-1.17.2/lib
WORKDIR $FLINK_HOME
EXPOSE 6123 8081
ENTRYPOINT ["/docker-entrypoint.sh"]