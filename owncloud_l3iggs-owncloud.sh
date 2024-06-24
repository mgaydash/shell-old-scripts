docker run \
	-v /home/mgaydash/owncloud:/usr/share/webapps/owncloud/data \
	-e DO_SSL_SELF_GENERATION=true \
	-e SUBJECT=/C=US/ST=CA/L=CITY/O=ORGANIZATION/OU=UNIT/CN=localhost \
	--name l3-owncloud \
	-p 80:80 \
	-p 443:443 \
	-d \
	l3iggs/owncloud

