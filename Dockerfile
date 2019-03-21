FROM node:10.15.3-alpine
LABEL maintainer="RickyHao <a959695@live.com>"

RUN apk update &&\
    apk add tzdata &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    echo "Asia/Shanghai" > /etc/timezone &&\
    apk del tzdata &&\
    npm config set unsafe-perm true &&\
    npm i -g shadowsocks-manager


COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 8888
	
ENTRYPOINT ["entrypoint.sh"]
