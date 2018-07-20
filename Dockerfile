FROM node:8.11.3-alpine
LABEL maintainer="RickyHao <a959695@live.com>"

RUN npm i -g shadowsocks-manager &&\
    apk update &&\
    apk add tzdata &&\
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    echo "Asia/Shanghai" > /etc/timezone &&\
    apk del tzdata

COPY run.sh /root/
RUN chmod +x /root/run.sh

EXPOSE 8888
	
ENTRYPOINT ["sh", "/root/run.sh"]
