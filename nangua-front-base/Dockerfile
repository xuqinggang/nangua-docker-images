FROM centos:7

ENV NODE_VERSION v8.9.3
ENV NODE_FILE node-$NODE_VERSION-linux-x64.tar.gz
ENV NODE_URL https://npm.taobao.org/mirrors/node/v8.9.3/$NODE_FILE

ENV PREFIX /opt/nangua

RUN yum -y install make gcc gcc-c++ wget

RUN mkdir -p $PREFIX && \
        wget $NODE_URL && \
        tar -zvxf $NODE_FILE -C $PREFIX --strip-components=1 --exclude=*.md --exclude=LICENSE && \
        rm -rf $NODE_FILE && \
        ln -s /opt/nangua/bin/node /usr/local/bin/node && \
        ln -s /opt/nangua/bin/npm /usr/local/bin/npm
