# docker-snmp-listener

**SNMP trap recorder, saves all received traps to a text file on the host**

Install git and docker, make sure docker service is running.

`git clone https://github.com/BobbyLeonard/docker-snmp-listener.git`

`cd docker-snmp-listener/`

Edit `envvars.txt` to choose username and passwords to connect to this listener.

Authorization uses SHA224, Privacy uses AES192 and the service listens on port 1161

`docker build -t snmplistener .`

You can now delete `envvars.txt`

`docker run --name snmplistener -d -v ~/snmp-listener-logs:/app/log -p 1161:1161/udp snmplistener`

Logs of received traps will be stored in `~/snmp-listener-logs/`

To check the container for errors : `docker logs snmplistener`

The default securityEngineId is 0102030405060708

If you require a differnet EngineID edit the following line in main.py before building.

`securityEngineId=v2c.OctetString(hexValue='0102030405060708')`
