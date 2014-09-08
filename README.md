# Docker image for JBoss SwitchYard
This docker image will install SwitchYard on top of an [EAP server][jboss_eap].

## Build steps
Make sure to have in files:
* [__switchyard-2.0.0.Alpha2-EAP6.3.Beta1.zip__][switchyard]

If the required files are not in __files__ directory of this repository, build script will try to fetch them from the internet, so internet connection will be required at build time.

## Installation details
* OS user: __jboss__
* HOME: __/home/jboss__
* EAP_HOME; __/home/jboss/jboss-eap-6.3__
* EAP_USER: __admin/admin123!__

By default, management and service interfaces bound to __0.0.0.0__

Profile run by default: __standalone.xml__

[jboss_eap]: https://github.com/jorgemoralespou/docker-jboss-eap
[switchyard]: http://switchyard.jboss.org
