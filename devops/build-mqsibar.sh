#!/bin/bash
mkdir -pv target/BARs
#cp -r  $builddir/client_impl/$1/src  target/$1
cp -r  $builddir/client_impl/$clientdir/src  target/$clientdir
source /opt/ibm/ace-11/server/bin/mqsiprofile
#/opt/ibm/ace-11/server/bin/mqsipackagebar -a target/BARs/$1.bar -w ~/workspace/mhdemo/target -k $1
echo "/opt/ibm/ace-11/server/bin/mqsipackagebar -a target/BARs/$clientdir.bar -w ${WORKSPACE}/target -k $clientdir"
/opt/ibm/ace-11/server/bin/mqsipackagebar -a target/BARs/$clientdir.bar -w ${WORKSPACE}/target -k $clientdir

mv target/BARs/*  $builddir/devops/packages
rm -Rf target/*