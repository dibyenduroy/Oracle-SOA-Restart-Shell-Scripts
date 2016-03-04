#!/bin/bash
#Setting PATH and other environment variables

export ORACLE_HOME=/app/soa
export TNS_ADMIN=/app/soa/network/admin
export SUBJECT="O2B TRN Stopped "
export RECIPIENTS=sandeep_r@intuit.com
#export RECIPIENTS=Tech-EBSEASAlerts@intuit.com

/app/soa/opmn/bin/opmnctl shutdown

mail -s "${SUBJECT}" "${RECIPIENTS}"
