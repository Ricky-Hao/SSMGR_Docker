FROM node:6
LABEL maintainer="RickyHao <a959695@live.com>"

RUN npm i -g shadowsocks-manager && \
	echo "Asia/Shanghai" > /etc/timezone && \
	rm /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

COPY run.sh /root/
RUN chmod +x /root/run.sh

EXPOSE 8888
	
ENTRYPOINT ["sh", "/root/run.sh"]
