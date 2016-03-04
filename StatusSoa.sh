#!/bin/bash

STATUS_SOA=`/app/soa/opmn/bin/opmnctl status | grep OC4J_SOA |grep Alive| wc -l`
STATUS_home=`/app/soa/opmn/bin/opmnctl status | grep home | grep Alive| wc -l`
STATUS_HTTP=`/app/soa/opmn/bin/opmnctl status | grep HTTP_Server |grep Alive| wc -l`

#Check if all SOA components are up & if all services are up, check for "HTTP availabel" in the soa log

if [ "$STATUS_SOA" -eq "1" ] && [ "$STATUS_home" -eq "1" ] && [ "$STATUS_HTTP" -eq "1" ];then
echo "OC4J_SOA, home & HTTP Server are up" 
echo `/app/soa/opmn/bin/opmnctl status`
echo "SOA services on host `uname -n` are up and running"

else
echo `/app/soa/opmn/bin/opmnctl status`
echo "Failed - SOA services on host `uname -n` are down"
fi
