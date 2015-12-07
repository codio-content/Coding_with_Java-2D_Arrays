#!/bin/bash

cd /home/codio/workspace/content/Dynamic

javac Dynamic.java
if [ $? -ne 0 ]; then exit 1; fi

java Dynamic
if [ $? -ne 0 ]; then exit 1; fi