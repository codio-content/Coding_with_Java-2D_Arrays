#!/bin/bash

INPUT0="subject"
INPUT1="verb"
INPUT2="predicate"
INPUT3="Jeff"
INPUT4="plays"
INPUT5="piano"
INPUT6="Mary"
INPUT7="cooks"
INPUT8="eggs"

echo "<h3>Program Output</h3>"

cd /home/codio/workspace/challenges/easy

javac Challenge.java
if [ $? -ne 0 ]; then exit 1; fi

# 1
OUTPUT1=($(java Challenge $INPUT0 $INPUT1 $INPUT2 $INPUT3 $INPUT4 $INPUT5 $INPUT6 $INPUT7 $INPUT8))
if [ $? -ne 0 ]; then exit 1; fi

# Define each array and then add it to the main one
declare -A MAIN_ARR
MAIN_ARR[0,0]=$INPUT0
MAIN_ARR[0,1]=$INPUT1
MAIN_ARR[0,2]=$INPUT2
MAIN_ARR[1,0]=$INPUT3
MAIN_ARR[1,1]=$INPUT4
MAIN_ARR[1,2]=$INPUT5
MAIN_ARR[2,0]=$INPUT6
MAIN_ARR[2,1]=$INPUT7
MAIN_ARR[2,2]=$INPUT8

for i in ${OUTPUT1[@]}; do
  echo "Your output:" $i
done

if [ ${#OUTPUT1[@]} != 1 ]; then
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the expected number of values"
  exit 1
fi

if [ ${OUTPUT1} != ${MAIN_ARR[1,2]} ]; then
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the correct value"
  exit 1
fi

echo "<br/><hr/><h3>Challenge Feedback</h3>"
echo "Well done you passed the challenge!"
exit 0

