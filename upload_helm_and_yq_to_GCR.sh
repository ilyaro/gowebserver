#!/bin/bash
# Upload "helm builder" build step image to GCR 
#git clone https://github.com/GoogleCloudPlatform/cloud-builders-community.git
cd cloud-builders-community/helm
GOOGLE_CLOUD_PROJECT=gowebserver-1
GCR_HELM=gcr.io/$GOOGLE_CLOUD_PROJECT/helm
#docker build -t $GCR_HELM .
docker push $GCR_HELM

# Upload "yq" build step image to GCR
GCR_YQ=gcr.io/$GOOGLE_CLOUD_PROJECT/yq
YQ=mikefarah/yq
docker pull $YQ
docker tag $YQ $GCR_YQ
docker push $GCR_YQ
