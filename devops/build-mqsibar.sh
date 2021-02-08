#!/bin/bash
source /opt/ibm/ace-11/server/bin/mqsiprofile
/opt/ibm/ace-11/server/bin/mqsipackagebar -a $1/devops/packages/package-$1.bar -w . -k target
