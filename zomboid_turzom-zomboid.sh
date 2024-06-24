docker run -d \
	-e SERVERNAME="mg-server" \
	-e ADMINPASSWORD="smelt3r99" \
	-e RCON_PASSWORD="p1zza" \
	-v /home/mgaydash/zomboid/server-data:/server-data \
	-v /home/mgaydash/zomboid/server-files:/server-files \
	-p 16261:16261 \
	-p 16261:16261/udp \
	-p 8766:8766 \
	-p 8767:8767 \
	-p 16262-16272:16262-16272 \
	--name zomboid \
	--hostname zomboid \
	turzam/zomboid
# The CMD script in the container must be updated to use the -nosteam flag

