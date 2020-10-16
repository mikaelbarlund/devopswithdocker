#!/bin/bash
echo "$1"
pwd
git clone $1 .
mvn install
java $2
