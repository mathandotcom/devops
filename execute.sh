#!/bin/bash
echo "Running Inside Script"
echo "DBNAME" $DBNAME
DATABASE=$DBNAME node server.js 
#echo $DBNAME
