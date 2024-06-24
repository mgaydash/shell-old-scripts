docker run \
	-d \
	--name tomcat-test \
	-p 8888:8080 \
	-v /Users/mgaydash/Desktop/dflowslope.xml:/usr/local/tomcat/conf/Catalina/localhost/dflowslope.xml \
	-v /Users/mgaydash/Desktop/com.dataforma.mongoconnect-0.0.1.jar:/usr/local/tomcat/lib/com.dataforma.mongoconnect-0.0.1.jar \
	-v /Users/mgaydash/Desktop/mongo-java-driver-2.13.0.jar:/usr/local/tomcat/lib/mongo-java-driver-2.13.0.jar \
	-v /Users/mgaydash/Workspaces/main/dflowslope/target/dflowslope-1.16.0.dev:/Users/mgaydash/Workspaces/main/dflowslope/target/dflowslope-1.16.0.dev \
	tomcat:7-jre7 $1

