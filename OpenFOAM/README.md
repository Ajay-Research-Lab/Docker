# Docker - OpenFOAM
OpenFOAM is one of the commonly used packages in our work related to computational fluid dynamics (CFD) and fluid-structure interaction (FSI). This folder contains:
- Dockerfile
- runOpenFOAM.sh

## Dockerfile
This is the docker file used to create the images. The files have been provided to enhance trust and transparency in our images. We are happy to add more packages upon request.

## Run the image
A run script has been provided to help easily start the image. More instructions have been provided below for different OS. The images have been compiled as a multi-platform image and docker desktop will automatically pull the image appropriate to your platform.

### MacOS / Linux
- Install docker desktop (https://www.docker.com/products/docker-desktop).
- Start the desktop client.
- Open the terminal and navigate to the folder where you have files that you will use.
- Change settings in the `runOpenFOAM.sh` script. Primary fields include:
  - `localfolder=${PWD}`: It will connect the current local folder so that the files in this folder and any sub-folders can be accessed from inside the container.
  - `version=latest`: Replace `latest` with the version of interest. If you do not change this, it will automatically pull the latest version for usage.
- Provide execution permissions using `chmod +x runOpenFOAM.sh`
- Run the script file using `./runOpenFOAM.sh`. This will start the container with root access inside Ubuntu.

### Windows 
Run instructions with screenshots for Windows is coming soon.

## Version history
The softwares available in each image is given below. We will keep this updated as new images are released.

### Version 1.0.0 (latest)

This image uses ajaylab/cpp docker image as the base. Over this, we have installed:
- OpenFOAM (v2306)

# Authors

* Ajay B Harish

# License 

This project is not officially licensed under the GPL v3 License - see the [LICENSE](LICENSE) file for details

### Disclaimer

This offering is not approved or endorsed by OpenCFD Limited, producer and distributor of the OpenFOAM software via [www.openfoam.com](https://www.openfoam.com), and owner of the OPENFOAM® and OpenCFD® trade marks.

### Acknowledgement

OPENFOAM® is a registered trademark of OpenCFD Limited, producer and distributor of the OpenFOAM software via [www.openfoam.com](https://www.openfoam.com).