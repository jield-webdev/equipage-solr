FROM solr:latest
LABEL maintainer="info@jield.nl"
LABEL org.opencontainers.image.source="https://github.com/jield-webdev/equipage-solr/solr"

#Create a dedicated solr data folder (and use a volume for this)
RUN mkdir -p /var/solr/index

ADD --chown=solr:solr solr/building /var/solr/data/building
ADD --chown=solr:solr solr/chemical /var/solr/data/chemical
ADD --chown=solr:solr solr/chemical_container /var/solr/data/chemical_container
ADD --chown=solr:solr solr/equipment /var/solr/data/equipment
ADD --chown=solr:solr solr/equipment_reservation /var/solr/data/equipment_reservation
ADD --chown=solr:solr solr/request /var/solr/data/request
ADD --chown=solr:solr solr/room /var/solr/data/room
ADD --chown=solr:solr solr/zone /var/solr/data/zone
ADD --chown=solr:solr solr/zone_reservation /var/solr/data/zone_reservation