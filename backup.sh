#!/bin/bash

dir=`basename "$PWD"`
mkdir ./backup /tmp/$dir
gocryptfs -init /tmp/$dir
gocryptfs /tmp/$dir ./backup
cp *.md ./backup

exit 0
