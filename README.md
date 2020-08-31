# equipage-solr
Dedicated Docker Repository for equipage Solr instance

##Deployment to Azure
```shell script
docker login equipage.azurecr.io
docker build --tag solr:1.0 .
docker tag solr:1.0 equipage.azurecr.io/solr:v1
docker push equipage.azurecr.io/solr:v1
```

##Build package in GitHub
```shell script
cat ~/GH_TOKEN.txt | docker login docker.pkg.github.com -u japaveh --password-stdin
docker build --tag equipage-solr:1.0 .
docker tag equipage-solr:1.0 docker.pkg.github.com/jield-webdev/equipage-solr/equipage-solr:latest
docker push docker.pkg.github.com/jield-webdev/equipage-solr/equipage-solr:latest
```