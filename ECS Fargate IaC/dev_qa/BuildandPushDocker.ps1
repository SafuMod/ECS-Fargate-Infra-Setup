docker buildx create --name nubuilder --driver docker-container --driver-opt image=artifactorycloud.saf.com/v-docker/moby/buildkit:buildx-stable-1 --platform linux/arm64
docker buildx use nubuilder
docker buildx inspect --bootstrap
docker buildx build --platform linux/arm64 -t artifactorycloud.saf.com/v-docker/saf-devops/custom-fluentbit-arm64:DT-10.0 --load .
docker buildx ls
docker push artifactorycloud.saf.com/v-docker/saf-devops/custom-fluentbit-arm64:DT-10.0