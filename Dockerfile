##########################################################################################
# Licensed Materials - Property of IBM
# (c) Copyright IBM Corporation 2014. All Rights Reserved.
#
# Note to U.S. Government Users Restricted Rights:
# Use, duplication or disclosure restricted by GSA ADP Schedule
# Contract with IBM Corp.
##########################################################################################
FROM registry.ng.bluemix.net/ibmnode:latest
MAINTAINER Shrenik Shah (ssshah@us.ibm.com)

ADD dist/hello-world.tar.gz /opt/IBM/node/apps/

ENV PATH /opt/IBM/node/bin:$PATH

WORKDIR /opt/IBM/node/apps/hello-world

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
