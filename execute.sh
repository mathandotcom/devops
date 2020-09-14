#!/bin/bash
echo "Running Inside Script"
echo "DBNAME" $DBNAME
echo "DBENV" $DBENV
DATABASE=$DBNAME ENV=$DBENV node server.js 
#echo $DBNAME
