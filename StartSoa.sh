#!/bin/bash
#Setting PATH and other environment variables

export ORACLE_HOME=/app/soa
export TNS_ADMIN=/app/soa/network/admin
export SUBJECT="O2B TRN Started "
#export RECIPIENTS=Tech-EBSEASAlerts@intuit.com
export RECIPIENTS=sandeep_r@intuit.com

/app/soa/opmn/bin/opmnctl startall

mail -s "${SUBJECT}" "${RECIPIENTS}"
