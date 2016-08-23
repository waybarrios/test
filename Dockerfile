FROM tomcat:9-jre8
MAINTAINER GeoNode Development Team

#
# Set GeoServer version and data directory
#
ENV GEOSERVER_DATA_DIR="/geoserver_data"

#
# Download and install GeoServer
#
RUN cd /usr/local/tomcat/webapps \
    && wget --progress=bar:force:noscroll https://github.com/waybarrios/geoserver/archive/master.zip \
    && unzip -q geoserver-master.zip -d geoserver \
    && rm geoserver-master.zip \
    && mkdir $GEOSERVER_DATA_DIR

VOLUME $GEOSERVER_DATA_DIR


