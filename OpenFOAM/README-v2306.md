# About this image

This repository houses a specialized version of OpenFOAM 2306 that has been meticulously tailored and optimized for the unique needs of ajaylab. OpenFOAM, an open-source computational fluid dynamics (CFD) software, is a powerful tool for simulating and solving complex fluid flow problems. The customized version here is crafted by the experts at ajaylab to enhance performance, provide additional features, and streamline workflows to cater specifically to our research and engineering endeavors.

More information on running (for users), modification (for developers), version history have been outlined below. To start with, we have considered the base image from OpenCFD and we aim to add to this image and version of OpenFOAM. The version changes are also given below. Note that the instructions below are for the Mac M1/M2 processors. More information for other architectures will be added.

## Run the docker image (v2306)

We have modified the script from OpenCFD and provided it as <code>openfoam-docker-v2306-100</code>. This is available in the current folcer. At present, only the arm version for M1/M2 macs have been compiled and we intend to do more and test in the coming days. In order to run OpenFOAM:
- Start the dockerhub desktop client
- Open the terminal in the mac
- Provide execution permissions to the script using <code>chmod +x openfoam-docker-v2306-100</code>
- Run the script to start OpenFOAM v2306 using the command <code>./openfoam-docker-v2306-100</code>
- The script will automatically download the image from the dockerhub ([ajaylab/openfoam-2306](https://hub.docker.com/r/ajaylab/openfoam-2306))

Alternatively, the Docker image can also be obtained from Zenodo ([OpenFOAM v2306](https://zenodo.org/deposit/8174056)). This would also provide a docker image alonand can be loaded.
- Unzip the tar.gz file
- Start the dockerhub desktop client
- Open the terminal in the mac
- Load the image using <code>docker load < openfoam-2306-v100.tar.gz</code>
- Provide execution permissions to the script using <code>chmod +x openfoam-docker-v2306-100</code>
- Run the script to start OpenFOAM v2306 using the command <code>./openfoam-docker-v2306-100</code>

## Creating the docker image (v2306)
In this section, we have documented the steps used to create these docker image in order to enhance the transparency of the contents of the image. It is envisioned to develop on this image and hence the official docker image has been cloned for usage to start with. This section is primarily for developers who would like to build on this image/work.

### Get the base docker image

For the purpose of the development of the docker image for OpenFOAM v2306, we are using the base [OpenFOAM](https://hub.docker.com/r/opencfd/openfoam-run/tags) image from OpenCFD with the tag *2306*. This image is used since it supports the arm64 processors (i.e. Mac M1/M2 processors). Get the docker image using the command <code>docker pull opencfd/openfoam-run:2306</code>.

### Create a version for Ajay Research Lab

The current version (1.0.0) is just obtained from renaming the docker image using the `tag` command as <code>docker tag opencfd/openfoam-run:2306 ajaylab/openfoam-2306:1.0.0</code>. This creates an image for the arm processors. We aim to release versions for other processors as well soon and add other lab related developments to this docker image as well.

### Save docker image for upload to zenodo

You can save the docker image into a tar.gz file using gzip as <code>docker save ajaylab/openfoam-2306:1.0.0 | gzip > openfoam-2306-v100.tar.gz</code>. Replace the version number `1.0.0` with the appropriate version of your choice.

## Versions

### 1.0.1
- Coming soon

### 1.0.0
- Includes the base image only
