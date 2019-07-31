#Pull a ubuntu image of version 18.10
FROM ubuntu:18.10

#Maintainer of this docker build
MAINTAINER Manivannan

#User to build this image
USER 999

#Set the WORKDIR
WORKDIR /jenkins

#Add all the source code to this directory
ADD . /jenkins

#Give permission to execute install_jenkins.sh file
RUN chmod +x ./install_jenkins.sh

ENTRYPOINT ["install_jenkins.sh"]
