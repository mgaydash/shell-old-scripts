docker run \
	-d \
	-v /home/mgaydash/maprend/MapRend/images:/app/html \
	-p 3001:80 \
	--name maprend_server \
	dmitriiz/node-static

