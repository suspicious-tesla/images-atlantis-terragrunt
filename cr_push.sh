# $CR_PAT is a Personal Access Token from Github for managing Container images 
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

docker build --tag atlantis-terragrunt .     
docker tag atlantis-terragrunt ghcr.io/suspicious-tesla/atlantis-terragrunt:0.13.5
docker push ghcr.io/suspicious-tesla/atlantis-terragrunt:0.13.5

