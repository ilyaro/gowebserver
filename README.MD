Infinity task 
- golang webserver with 2 endpopints
- provision GKE with terraform: https://gitlab.com/ilyaro/gitlab-terraform-gke
- build app, docker, push to gcr, deploy with helm  with gcp cloudbuild
- build helm and jq docker images with: https://github.com/GoogleCloudPlatform/cloud-builders-community.git 
- add 2 endpoints to ingress with exteranl gcp load balancer, service type: LoadBalancer
- make tag and push to github, cloudbuild will be triggered by tag: v-*
- GCP cloudbuild uses linked project of github: https://github.com/ilyaro/gowebserver.git
g tag v-1.0.30 && g p origin -u feat/TASK-1-go-webserver-ci-cd --tags


