FROM jboss/switchyard-wildfly

RUN /opt/wildfly/bin/add-user.sh admin admin123! --silent

#
# Enable port for debugging with --debug
EXPOSE 8787

# Enable binding to all network interfaces and debugging inside the server
RUN echo "JAVA_OPTS=\"\$JAVA_OPTS -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0\"" >> ${JBOSS_HOME}/bin/standalone.conf

ENTRYPOINT ["/opt/wildfly/bin/standalone.sh"]
CMD []
