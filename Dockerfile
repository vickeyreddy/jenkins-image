#Pull a ubuntu image of version 18.10
FROM ubuntu:18.10

#Set the WORKDIR
WORKDIR /jenkins

#Add all the source code to this directory
ADD . /jenkins

