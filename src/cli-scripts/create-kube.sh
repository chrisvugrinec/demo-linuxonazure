#!/bin/bash

rg="chrisv-easus"
sp="VisualStudio/PSSSST_SECRET"
sppwd="PSSSS_SECRET"


az account show 

# currently no az cli on hosted, so  installed with prerequisites shell script
#az group create --name $rg --location westeurope

# only create sp if not exists
#if [[ -n $(az ad sp show --id http://$sp) ]]; 
#then
 #echo "SP: $sp already exists";
#else
  #resourcegroupId=$(az group show --name $rg --query [id] -o tsv)
  #az ad sp create-for-rbac --name $sp --password $sppwd --role="Contributor" --scopes=$resourcegroupId
#fi

az acs create --agent-count 3 --master-count 1 --orchestrator-type kubernetes --resource-group $rg --name $rg 

