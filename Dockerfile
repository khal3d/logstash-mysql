FROM docker.elastic.co/logstash/logstash:8.5.1

# Download JDBC connector for Logstash
RUN curl -LsS https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j-8.0.32.tar.gz |\
    tar -xz  -C /usr/share/logstash/logstash-core/lib/jars/ --strip-components=1 'mysql-connector-j-8.0.32/mysql-connector-j-8.0.32.jar'
