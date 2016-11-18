## Getting Started

- Install Virtual Box https://www.virtualbox.org/wiki/Downloads
- On Mac Os, Install boot2docker from https://docs.docker.com/installation/mac/
- After installation Run the VM for boot2docker

```unix
boot2docker init
boot2docker up
```
- Have boot2docker initialized in current shell run

```unix
eval $(boot2docker shellinit)
```
- Have the shell initailization in across all shells

```unix
echo eval \$(boot2docker shellinit) >> ~/.profile
```
- Running local registry on localhost:5000

```unix
docker run -d -p 5000:5000 registry:2
```
- To verify the registry is running, following command lists the registry
```unix
docker ps
```
## To get an ubuntu image

```unix
docker pull ubuntu
```

## Running a Base Image

- Navigate to /aws location and run

```unix
docker build docker/baseimage
```
- This will create the base image and to verify look for the image key generated in previous step in

```unix
docker images
```
## Registering a image

- Tag your build

```unix
docker build -t myfirstimage docker/baseimage
```
- Tag your local build to repository

```unix
docker tag myfirstimage localhost:5000/myfirstimage
```
- Commit your changes to image, This steps registers your image in local registry and can be used as starting point for other Docker files

```unix
docker push localhost:5000/myfirstimage
```
- Any further changes to your baseimage dockerfile can be tracked in `localhost:5000/myfirstimage`. So running a "push" command often with commit your changes to registry

## Running an image

- After image is built, following command will run the image "myfirstimage" with a name "firstrun"

```unix
docker run --name firstrun myfirstimage
```
- Some useful flags to "run" command

  - `-t` to add tty
  - `-i` for interactive mode (helpful in debugging issues)
  - `-d` to run as background daemons
  - `-p<sourceport>:<destport>` to port forward an exposed port in docker container to outside
- Check to see if the container is running ( Note that if container runs into error then process exits. Use `-i` to debug)

```unix
docker ps
```
- To login into a existing container

```unix
docker exec -it firstrun bash
```
-Stop docker container

```unix
docker stop firstrun
```
- clean up stopped container "firstrun"

```unix
docker rm firstrun
```
