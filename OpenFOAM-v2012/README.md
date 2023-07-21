# About this image


## Run the docker image


## Creating the docker image
In this section, we have documented the steps used to create these docker image in order to enhance the transparency of the contents of the image.

### Get the base docker image

For the purpose of the development of the docker image for OpenFOAM v2012, we are using the base [Ubuntu image](https://hub.docker.com/_/ubuntu/tags) with the tag *mantic-20230712*. Get the docker image using the command

<code>
docker pull ubuntu:mantic-20230712
</code>

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
