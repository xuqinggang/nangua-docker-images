FROM private-registry.sohucs.com/kuaizhan-plf/java-env:prod
MAINTAINER "zixiong" <harleyque@sohu-inc.com>

# 安装基本工具
RUN yum -y update && yum install -y build-essential curl wget git which

# 安装maven
WORKDIR /opt
ENV MAVEN_VERSION 3.5.0
RUN wget ftp://ftp:gemeinsamwirstark@10.10.80.153/resources/apache-maven-3.5.0-bin.tar.gz
RUN tar zxf apache-maven-3.5.0-bin.tar.gz
RUN ln -s /opt/apache-maven-$MAVEN_VERSION /opt/maven
RUN ln -s /opt/maven/bin/mvn /usr/bin/mvn
ENV MAVEN_HOME /opt/maven

# 编译一遍，下载所需的依赖
ARG DIR=/opt/apps/nangua-console
RUN mkdir -p /opt/apps/nangua-console
# 拷贝
ADD ./ $DIR
WORKDIR $DIR
# 编译代码
RUN /opt/maven/bin/mvn clean package  -Dmaven.test.skip=true

#COPY ./target/root.war $PREFIX/jetty/webapps/
#COPY ./deploy/start.sh /start.sh
#
#ENTRYPOINT /bin/bash /start.sh
