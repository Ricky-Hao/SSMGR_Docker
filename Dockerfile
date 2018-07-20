FROM node:8.11.3-alpine
LABEL maintainer="RickyHao <a959695@live.com>"

RUN apk update &&\
    apk add tzdata python3&&\
    npm i -g shadowsocks-manager &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    echo "Asia/Shanghai" > /etc/timezone &&\
    apk del tzdata

COPY run.sh /root/
RUN chmod +x /root/run.sh

EXPOSE 8888
	
ENTRYPOINT ["sh", "/root/run.sh"]
