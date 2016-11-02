#Initial Commit Readme

## How to Run
To open website, type
```bash
./runSetup.sh
```
This command runs the setup script which checks that docker and docker-compose are downloaded. After that, it runs the docker compose command that downloads the docker image and runs it. 

## Project contents

### Dockerfile
While the actual docker image being used by this project is being pulled down from dockerhub (https://hub.docker.com/r/tbartlet/mini-project-ubuntu/). The actual dockerfile uses an ubuntu image as a starting place to build from. Then, it installs basic tools (sudo, curl, git)and then downloads nodejs. Ideally, I would prefer to use an image that already has nodejs and some of the basic tools, but ubuntu was used to show the steps of building an image from a minimal base.  

### docker-compose.yml
The docker-compose file is very basic, simply specifying the image, the port mappings from docker container to host, and the command to be run (node web_server.js)

### web_server.js & index.html
Simple node.js app to serve up the barebones html page. If given more time, I would like to 1) make the webpage slightly better looking (even if just to pick a better font) and 2) add different behaviors for GET/POST/PUT. However, my approach was to build a small thing that works and fits the requirements first. In the future, things can be added. 

## Other notes

### Testing
Normally, I would prefer to use Test Driven Development to design a system like this. However, due to life-factors, I was not able to do that for this project. Most likely Inspec (by Chef) would be used to verify the server is up, the port is exposed, other ports are not exposed, and that the served file contains the expected message. 

### Security
While security is an important cross-functional requirement on any project, it was not taken into consideration for this iteration of this project. 