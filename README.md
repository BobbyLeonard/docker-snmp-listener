# docker-snmp-listener

Install git and docker, make sure docker service is running.

`git clone https://github.com/BobbyLeonard/docker-snmp-listener.git`

`cd docker-snmp-listener/`

`docker build -t snmplistener .`

edit envvars.txt to choose username and passwords to connect to this listener.
Authorization uses SHA224, Privacy uses AES192

`docker run --env-file envvars.txt --name snmplistener -d -v ~/snmp-listener-logs:/app/log -p 1161:1161/udp snmplistener`

logs of received traps will be stored in `~/snmp-listener-logs/`

To check the container for errors : `docker logs snmplistener`

