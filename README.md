# equipage-solr
Dedicated Docker Repository for equipage Solr instance

##Deployment to Azure
```shell script
docker login imecint.azurecr.io
docker build --tag equipage-solr:1.0 .
docker tag equipage-solr:1.0 imecint.azurecr.io/equipage-solr:v1
docker push imecint.azurecr.io/equipage-solr:v1
```

##Build package in GitHub
```shell script
echo $CR_PAT | docker login ghcr.io -u japaveh --passwrod-stdin
docker build --tag equipage-solr:1.0 .
docker tag equipage:develop ghcr.io/jield-webdev/equipage-solr:1.0
docker push ghcr.io/jield-webdev/equipage-solr:1.0
```

