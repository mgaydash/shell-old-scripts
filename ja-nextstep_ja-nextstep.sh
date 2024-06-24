# -e PASSENGER_APP_ENV=development \

docker run \
	-d \
	--name ja-nextstep \
	-p 80:80 \
	--volumes-from bundle_box \
	ja-nextstep:latest bash \
		./startup.sh
