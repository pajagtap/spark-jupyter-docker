# spark-jupyter-docker
To create standalone spark cluster, include jupyterlab to run the spark notebook, using docker setup.

We have mainly 2 files, 
  1. Dockerfile to generate the required image and install required libraries and run the jupyter lab on cluster
  2. Docker compose file to attach local volume and manage the container

Pre-requisite:
1. Docker Desktop installed and running
2. Basic understanding of Docker, containers, images, docker builds and spark


Follow the steps below to get the setup running,
1. Build docker image
   ```
   docker build -t spark-jupyter .
   ```
   ***Note: If you are running the behind any firewall, include the proxy in Dockerfile before image name.

2. Once the image is build, verify on Docker Desktop app.
3. Modify the paths in docker-compose file if you need to and then run the docker-compose using
   ```
   docker compose up -d
   ```
   ***You can also run the docker image using ```docker run -p 8888:8888 -p 4040:4040 --name spark -d spark-jupyter```
