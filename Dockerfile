FROM solr:8
LABEL maintainer="info@jield.nl"
LABEL org.opencontainers.image.source="https://github.com/jield-webdev/equipage-solr/solr"

ADD solr/chemical /opt/solr/server/solr/configsets/chemical
ADD solr/chemical_container /opt/solr/server/solr/configsets/chemical_container
ADD solr/equipment /opt/solr/server/solr/configsets/equipment
ADD solr/equipment_reservation /opt/solr/server/solr/configsets/equipment_reservation
ADD solr/request /opt/solr/server/solr/configsets/request
ADD solr/room /opt/solr/server/solr/configsets/room
ADD solr/zone /opt/solr/server/solr/configsets/zone
ADD solr/zone_reservation /opt/solr/server/solr/configsets/zone_reservation