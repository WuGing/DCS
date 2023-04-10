docker stop dcsserver
docker rm dcsserver

docker run \
-e USER=dcsuser \
-e PASSWORD=mypassword \
-e RESOLUTION=1680x720 \
-v /mnt/g/DCS/serverfiles:/home/dcsuser/dcs \
-p 8080:80      \
-p 9443:443     \
-p 5900:5900    \
-p 8088:8088    \
-p 10308:10308/tcp \
-p 10308:10308/udp \
-e SSL_PORT=443 \
-v /dev/shm:/dev/shm \
--name dcsserver dcs-server-docker