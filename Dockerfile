
FROM centos:7
MAINTAINER jacklyn

RUN yum install -y wget

RUN cd /

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 && \
    echo "deb http://repos.azulsystems.com/ubuntu stable main" >> /etc/apt/sources.list.d/zulu.list && \
    apt-get -qq update && \
    apt-get -qqy install zulu-8=8.30.0.1 && \
    rm -rf /var/lib/apt/lists/*

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz

RUN tar zxvf apache-tomcat-7.0.88.tar.gz

ENV JAVA_HOME=/zulu8.25.0.1-jdk8.0.152-linux_x64
ENV PATH=$PATH:/zulu8.25.0.1-jdk8.0.152-linux_x64/bin
CMD ["/apache-tomcat-7.0.88/bin/catalina.sh", "run"]