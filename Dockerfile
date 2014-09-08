# Steps taken to create this image
# docker build --rm -t jboss.org/dtgov:1.3.0  .
# docker run -p 9990:9990 -p 9999:9999 -p 8080:8080 -it jmorales/jboss.org-switchyard:2.0.0
#
#
FROM jmorales/jboss-eap:6.3.0

ADD files/switchyard-2.0.0.Alpha2-EAP6.3.Beta1.zip /tmp/

RUN unzip -o /tmp/switchyard-2.0.0.Alpha2-EAP6.3.Beta1.zip -d $EAP_HOME

ENTRYPOINT ["/home/jboss/jboss-eap-6.3/bin/standalone.sh"]
CMD []
