docker run \
	--name owncloud \
	-v /home/mgaydash/owncloud:/var/www/html \
	-d \
	-p 443:443 \
	owncloud:9.0.1

