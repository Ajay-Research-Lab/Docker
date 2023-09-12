# Docker - OpenFOAM
OpenFOAM is one of the very commonly used languages in our numerical development work. This folder contains:
- Dockerfile
- runCpp.sh

## Dockerfile
This is the docker file used to create the images. The files have been provided to enhance trust and transparency in our images. We are happy to add more packages upon request.

## Run the image
A run script has been provided to help easily start the image. More instructions have been provided below for different OS. The images have been compiled as a multi-platform image and docker desktop will automatically pull the image appropriate to your platform.

### MacOS / Linux
- Install docker desktop (https://www.docker.com/products/docker-desktop).
- Start the desktop client.
- Open the terminal and navigate to the folder where you have files that you will use.
- Change settings in the `run_______.sh` script. Primary fields include:
  - `localfolder=${PWD}`: It will connect the current local folder so that the files in this folder and any sub-folders can be accessed from inside the container.
  - `version=latest`: Replace `latest` with the version of interest. If you do not change this, it will automatically pull the latest version for usage.
- Provide execution permissions using `chmod +x run_______.sh`
- Run the script file using `./run_______.sh`. This will start the container with root access inside Ubuntu.

### Windows 
Run instructions with screenshots for Windows is coming soon.

## Version history
The softwares available in each image is given below. We will keep this updated as new images are released.

### Version 1.0.0 (latest)

This image uses Ubuntu (kinetic-20220602) as the base OS. Other softwares installed include:
- GNU compiler collection (v12.2.0)
- Vim editor (v9.0.242)
- GNU gdb (v.12.1.0)
- duf utility

# Authors

* Ajay B Harish

# License 

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details