#!/bin/bash

cd /home/codio/workspace/content/Desks

javac Desks.java
if [ $? -ne 0 ]; then exit 1; fi

java Desks
if [ $? -ne 0 ]; then exit 1; fi