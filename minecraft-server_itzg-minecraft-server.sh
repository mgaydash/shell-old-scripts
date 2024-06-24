docker run \
	-d \
	-i \
	-p 25565:25565 \
	--name mc \
	-v /mnt:/data \
	--restart=always \
	itzg/minecraft-server

