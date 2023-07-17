# Dockerhub

- https://docs.docker.com/get-started/04_sharing_app/
- `docker image ls` 找出合適的名稱，例如「blogger-editor_app」
- 建立合適的repo https://hub.docker.com/
- `docker tag blogger-editor_app pudding/docker-app:video-download-20230626`
- `docker push pudding/docker-app:video-download-20230626`
- 修改Dockerfile 

````
FROM pudding/docker-app:video-download-20230626
````