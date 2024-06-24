docker run \
	-d \
	-v /home/mgaydash/html:/app/html \
	-p 3000:80 \
	--name overviewer_server \
	dmitriiz/node-static

