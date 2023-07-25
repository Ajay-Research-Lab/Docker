# About this image

This repository houses a specialized version of Python 3.11 that has been meticulously tailored and optimized for the unique needs of ajaylab. The customized version here is crafted by the experts at ajaylab to enhance performance, provide additional features, and streamline workflows to cater specifically to our research and engineering endeavors.

More information on running (for users), modification (for developers), version history have been outlined below. To start with, we have considered the base image from OpenCFD and we aim to add to this image and version of OpenFOAM. The version changes are also given below. Note that the instructions below are for the Mac M1/M2 processors. More information for other architectures will be added.

## Run the docker image
The image can be obtained from dockerhub or from Zenodo. Once the container has been launched, the lab's python environment can be activated for usage. This container has Python v3.11 and modules (listed in requirements.txt).

### Get from dockerhub
We have prepared a script <code>python-docker-v311-100</code> to enable users to easily launch the docker. This is available in the current folder. At present, only the arm version for M1/M2 macs have been compiled and we intend to do more and test in the coming days. In order to run Python:
- Start the dockerhub desktop client
- Open the terminal in the mac
- Provide execution permissions to the script using <code>chmod +x python-docker-v311-100</code>
- Run the script to start a docker container to enable usage of Python 3.11 using the command <code>./python-docker-v311-100</code>
- The script will automatically download the image from the dockerhub ([ajaylab/python-311](https://hub.docker.com/r/ajaylab/python-311))

### Get from Zenodo
Alternatively, the Docker image can also be obtained from Zenodo ([Python v311](https://to-be-decided)). This would also provide a docker image that can be loaded.
- Unzip the tar.gz file
- Start the dockerhub desktop client
- Open the terminal in the mac
- Load the image using <code>docker load < python-311-v100.tar.gz</code>
- Provide execution permissions to the script using <code>chmod +x python-docker-v311-100</code>
- Run the script to start docker container using the command <code>./python-docker-v311-100</code>.

### Activate Python environment inside container
- The Python environment can be activated using the command `activate-python`
- If needed, the Jupyter notebook can be launched using the command `run-jupyter`
- The Python environment can be deactivated using the command `deactivate`

## Creating the docker image (v2306)
In this section, we have documented the steps used to create these docker image in order to enhance the transparency of the contents of the image. It is envisioned to develop on this image and hence the official docker image has been cloned for usage to start with. This section is primarily for developers who would like to build on this image/work. The below steps are used as alternative to the standard dockerfile.

### Get the base docker image

For the purpose of the development of the docker image for Ubuntu, we are using the base [Ubuntu](https://hub.docker.com/_/ubuntu/tags) image which is an official docker image. We use the image with the tag *mantic-20230712*. Get the docker image using the command <code>docker pull ubuntu:mantic-20230712</code>.

### Create a version for Ajay Research Lab

The current version (1.0.0) has Python 3.11 already installed. Further installations include
- Java runtime environment
- VIM editor
- Pip installer
- Python modules listed in *requirements.txt*
- The installation is done through a bash script *install.sh* given here.

This container is finally saved to create a new image.

### Save docker image for upload to zenodo

The docker image is saved into a tar.gz file using gzip as <code>docker save ajaylab/python-311:1.0.0 | gzip > python-311-v100.tar.gz</code>. Replace the version number `1.0.0` with the appropriate version of your choice.

## Versions

### 1.0.1
- Coming soon

### 1.0.0
- Includes the base image only
