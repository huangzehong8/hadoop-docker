FROM apache/hadoop:3.3.5

ENV JAVA_HOME=/usr/lib/jvm/jre \
    HADOOP_HOME=/opt/hadoop \
    HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop \
    HADOOP_LOG_DIR=/opt/hadoop/logs

RUN mkdir -p ${HADOOP_LOG_DIR} ${HADOOP_HOME}/data
