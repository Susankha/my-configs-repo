############################################################
# Dockerfile to run Vim Containers
# Based on Ubuntu Image
############################################################

# Set the base image to use to Ubuntu
FROM ubuntu

# Set the file maintainer (your name - the file's author)
MAINTAINER Maintaner Susankha

#update the dafault applications
RUN apt-get -y update

#install zip and unzip tolls
RUN apt-get install zip unzip

#run echo
RUN echo 'we are running wso2 docker !!!'

#copy file from host to container
ADD run.sh /tmp

#change the permission of run.sh file
RUN chmod +x /tmp/run.sh

#copy wso2 AS to container
ADD products/wso2as-5.2.1.zip /tmp

RUN mkdir /tmp/wso2

#unzip wso2 AS
RUN unzip /tmp/wso2as-5.2.1.zip -d /tmp/wso2

#ADD run.sh /usr/local/bin/

#run the run.sh after start the container
#CMD ["tmp/run.sh"]
ENTRYPOINT ["/tmp/run.sh"]

CMD ["AAAAAAAAAAAA","BBBBBBBBBB","pwd"]


CMD /bin/sh -c bash
