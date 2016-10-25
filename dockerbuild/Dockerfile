FROM ubuntu:latest
MAINTAINER Tamara Bartlett

CMD apt-get update
CMD apt-get install sudo
CMD sudo apt-get install curl -y
CMD sudo apt-get install git -y
CMD curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
CMD sudo apt-get install -y nodejs

CMD git clone https://github.com/tamarabartlett/dev-ops-mini-project.git
CMD cd cd dev-ops-mini-project/

EXPOSE 8080
CMD [ "node", "web_server.js" ]

CMD echo "TEST"