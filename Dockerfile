FROM tomcat:9-jre8
MAINTAINER Wayner Barrios <waybarrios@gmail.com>

#
# Set GeoServer version and data directory
#
ENV GEOSERVER_DATA_DIR="/geoserver_data"

#
# Download and install GeoServer
#
RUN cd /usr/local/tomcat/webapps \
    && wget --progress=bar:force:noscroll https://github.com/waybarrios/geoserver/archive/master.zip \
    && unzip -q master.zip -d geoserver \
    && rm master.zip \
    && mkdir $GEOSERVER_DATA_DIR

VOLUME $GEOSERVER_DATA_DIR


