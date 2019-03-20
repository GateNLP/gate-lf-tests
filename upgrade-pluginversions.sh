#!/bin/bash

# NOTE: the upgrade utility currently sadly cannot upgrade from all versions and it will upgrade
# plugins not mentioned in here depending on the version of GATE it runs under!
# So in order to do a controlled upgrade, we need to mention ALL plugin version that get used anywhere in the tsv file!!
# To find existing plugin versions in all xgapp files:
# xmlstarlet sel -t -m '//urlList/localList/gate.creole.Plugin-Maven' -v 'concat("creole://", group, ";", artifact, ";", version,

tsvfile="$1"
if [[ "x$tsvfile" == "x" ]]
then
  echo Need one parameter, the name of the upgrade tsv file
  exit 1
fi

if [ "x${GATE_HOME}" == "x" ]
then
  echo Environment variable GATE_HOME not set
  exit 1
fi

if [[ -f "${GATE_HOME}/gate.classpath" ]]
then
  gatecp=`cat "${GATE_HOME}/gate.classpath"`
else
  if [[ -d "${GATE_HOME}/lib" ]]
  then
    gatecp="${GATE_HOME}/lib/"'*'
  else
    echo Could not find $GATE_HOME/gate.classpath nor $GATE_HOME/lib
    exit 1
  fi
fi
find . -name '*.gapp' -o -name '*.xgapp' | while read f
do
  echo "Updating file $f and converting back to linux format"
  java -classpath "$gatecp" gate.util.persistence.UpgradeXGAPP "$f" "$tsvfile"
  dos2unix $f
done
