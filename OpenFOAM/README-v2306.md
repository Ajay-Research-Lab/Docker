# About this image

The lab has transitioned to use v2306 version of OpenFOAM from OpenCFD. More information on creating (for developers) and running (for users) has been outlined below. To start with, we have considered the base image from OpenCFD and we aim to add to this image and version of OpenFOAM. The version changes are given below.

## Run the docker image (v2306)

We have modified the script from OpenCFD and provided it as <code>openfoam-docker-v2306.0.0.1</code>. This is available in the current folcer. At present, only the arm version for M1/M2 macs have been compiled and we intend to do more and test in the coming days. In order to run OpenFOAM:
- Open the terminal in the mac
- Provide execution permissions to the script using <code>chmod +x openfoam-docker-v2306.0.0.1</code>
- Run the script to start OpenFOAM v2306 using the command <code>./openfoam-docker-v2306.0.0.1</code>

## Creating the docker image (v2306)
In this section, we have documented the steps used to create these docker image in order to enhance the transparency of the contents of the image. It is envisioned to develop on this image and hence the official docker image has been cloned for usage to start with. This section is primarily for developers who would like to build on this image/work.

### Get the base docker image

For the purpose of the development of the docker image for OpenFOAM v2306, we are using the base [OpenFOAM](https://hub.docker.com/r/opencfd/openfoam-run/tags) image from OpenCFD with the tag *2306*. This image is used since it supports the arm64 processors (i.e. Mac M1/M2 processors). Get the docker image using the command <code>docker pull opencfd/openfoam-run:2306</code>.

### Create a version for Ajay Research Lab

The current version (1.0.0) is just obtained from renaming the docker image using the `tag` command as <code>docker tag opencfd/openfoam-run:2306 ajaylab/openfoam-2306-arm:1.0.0</code>. This creates an image for the arm processors. We aim to release versions for other processors as well soon and add other lab related developments to this docker image as well.

## Versions

### 0.0.2
- Coming soon

### 0.0.1
- Includes the base image only
