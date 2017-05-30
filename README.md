# single_container_demo

build based on attached Dockerfile using the following command:

docker build -t countdown-nginx .

Run new image with the following command:

docker run --name countdown -p 8080:80 countdown-nginx

publish image to Dockerhub:

docker tag countdown-nginx robertfreeman/countdown-nginx
docker push robertfreeman/countdown-nginx

To run as a service on DDC:

docker service create --publish 8888:80 --name countdown robertfreeman/countdown-nginx

To run as a application

docker stack deploy -c docker-compose.yml countdown-app
