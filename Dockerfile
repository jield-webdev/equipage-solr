FROM solr:8
LABEL maintainer="info@jield.nl"
LABEL org.opencontainers.image.source="https://github.com/jield-webdev/equipage-solr/solr"

ADD --chown=solr:solr solr/chemical /var/solr/data/chemical
ADD --chown=solr:solr solr/chemical_container /var/solr/data/chemical_container
ADD --chown=solr:solr solr/equipment /var/solr/data/equipment
ADD --chown=solr:solr solr/equipment_reservation /var/solr/data/equipment_reservation
ADD --chown=solr:solr solr/request /var/solr/data/request
ADD --chown=solr:solr solr/room /var/solr/data/room
ADD --chown=solr:solr solr/zone /var/solr/data/zone
ADD --chown=solr:solr solr/zone_reservation /var/solr/data/zone_reservation