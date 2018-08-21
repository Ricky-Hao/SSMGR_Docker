#! /bin/bash
docker pull rickyhao/ssmgr_docker:0.19.2
docker run --rm -d --name ssmgr --mount type=bind,source=/home/ricky/.ssmgr,target=/root/.ssmgr -p 8888:8888 rickyhao/ssmgr_docker:latest
