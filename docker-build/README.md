# Dockerhub

- https://docs.docker.com/get-started/04_sharing_app/
- `docker image ls` 找出合適的名稱，例如「docker-python-taguette_app」
- 建立合適的repo https://hub.docker.com/
- `docker tag docker-python-taguette_app pudding/taguette:20230717`
- `docker push pudding/taguette:20230717`
- 修改Dockerfile 

````
FROM pudding/taguette:20230717
````