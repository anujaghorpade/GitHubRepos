# Base image and maintainer details
FROM java:8-jre
MAINTAINER Enterprise AppsMaker masterCraft.support@tcs.com
USER root
# Create necessary directories and set permissions
RUN mkdir  /EnterpriseAppsMaker && \
 mkdir  /EnterpriseAppsMaker/logs && \
 chmod 777 /EnterpriseAppsMaker/logs && \
 chmod 777 /EnterpriseAppsMaker
# Expose the http, database and administration ports
EXPOSE 8080 9990
# Specify container startup command
CMD java -jar /EnterpriseAppsMaker/SemiConductorManagement-1.jar