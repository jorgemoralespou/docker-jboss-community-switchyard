mkdir -p /tmp/input && mkdir -p /tmp/output && chmod 777 /tmp/input && chmod 777 /tmp/output
docker run -it --rm -p 8080:8080 -p 9990:9990 -p 9999:9999 -p 8787:8787 -v /tmp/input:/input -v /tmp/output:output jboss/switchyard-wildfly-admin --debug
