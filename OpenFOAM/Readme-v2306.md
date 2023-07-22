# About this image

The lab has transitioned to use v2306 version of OpenFOAM from OpenCFD. More information on creating (for developers) and running (for users) has been outlined below. To start with, we have considered the base image from OpenCFD and we aim to add to this image and version of OpenFOAM.

## Run the docker image (v2306)

We have modified the script from OpenCFD and provided it as <code>openfoam-docker-v2306.0.0.1</code>. Currently, only the arm version for M1/M2 macs have been compiled and we intend to do more and test in the coming days. In order to run OpenFOAM:
- Open the terminal in the mac
- Provide execution permissions to the script using <code>chmod +x openfoam-docker-v2306.0.0.1</code>
- Run the script to start OpenFOAM v2306 using the command <code>./openfoam-docker-v2306.0.0.1</code>

## Creating the docker image (v2306)
In this section, we have documented the steps used to create these docker image in order to enhance the transparency of the contents of the image. It is envisioned to develop on this image and hence the official docker image has been cloned for usage 

### Get the base docker image

For the purpose of the development of the docker image for OpenFOAM v2012, we are using the base [OpenFOAM](https://hub.docker.com/r/opencfd/openfoam-run/tags) image from OpenCFD with the tag *2306*. This image is used since it supports the arm64 processors (i.e. Mac M1/M2 processors). Get the docker image using the command <code>docker pull opencfd/openfoam-run:2306</code>.

### Run the docker image

A <code>rundocker.sh</code> script is created. Since we are using a Mac M1/M2 processor, we are using the *arm64* architecture. Alternatively, the same can be adapted for other processor architectures. The contents of the script are as given below and also available in this folder:

- Define the image to be launched
<code>appname=ubuntu:mantic-20230712</code>
- Define the platform for usage
<code>platform=arm64</code>
- Set the local folder is set to current folder
<code>localfolder=${PWD}</code>
- Host folder inside the container
<code>hostfolder=/home</code>
- Finally, run the docker command to create the container 
<code>docker run -it -p 8888:8888 -v "$\{localfolder\}":$\{hostfolder\} $\{appname\}</code>

### Install pre-requisites
Once the container is ready, we need to install the pre-requisites to install OpenFOAM. Start by updating the system using `apt update`. Following this, get the necessary OpenFOAM dependencies using the paraview development package. Note that this could take a while to install depending on the internet connection. Use the command
<code>sudo apt install paraview-dev</code>
