docker run \
	-d \
	-v /home/mgaydash/maprend/MapRend:/usr/src/myapp \
	-v /home/minecraft/world:/usr/world \
	-w /usr/src/myapp \
	--name maprend \
	java:7 \
	java -jar MapRend.jar map ../../world/ . images

