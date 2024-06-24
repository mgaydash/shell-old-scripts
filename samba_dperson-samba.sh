docker run \
	-d \
	--name dperson-samba \
	-p 139:139 \
	-p 445:445 \
	-v /Users/mgaydash/Workspaces/side/ricksrods.com:/share \
	dperson/samba \
		-s "public;/share" \

