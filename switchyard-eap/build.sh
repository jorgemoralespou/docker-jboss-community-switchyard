#!/bin/bash

if [ ! -f files/switchyard-2.0.0.Alpha2-EAP6.3.Beta1.zip ]
then
   wget http://downloads.jboss.org/switchyard/releases/v2.0.Alpha2/switchyard-2.0.0.Alpha2-EAP6.3.Beta1.zip -P files
fi
[ ! -f files/switchyard-2.0.0.Alpha2-EAP6.3.Beta1.zip ] && echo "No SwitchYard (switchyard-2.0.0.Alpha2-EAP6.3.Beta1.zip) available in files dir" && exit 255

docker build --rm -t jmorales/jboss.org-switchyard:2.0.0  .

