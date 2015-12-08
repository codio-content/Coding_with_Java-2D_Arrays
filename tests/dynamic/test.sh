#!/bin/bash

INPUT0=3
INPUT1=4

echo "<h3>Program Output</h3>"

cd /home/codio/workspace/challenges/dynamic

javac Challenge.java
if [ $? -ne 0 ]; then exit 1; fi

# 1
OUTPUT1=($(java Challenge $INPUT0 $INPUT1))
if [ $? -ne 0 ]; then exit 1; fi


output[0]=0
count=0
echo
echo "Your output: "
for i in ${OUTPUT1[@]}; do
  output[$count]=$i
  printf "%9s" $i
  (( count++ ))
done
echo

LENGTH=$(( $INPUT0*$INPUT1 ))
if [ ${#OUTPUT1[@]} != $LENGTH ]; then
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the expected number of values"
  exit 1
fi

declare -A result
count=0
for (( i=0; i < $INPUT0; i++ )) {
  for (( j=0; j < $INPUT1; j++ )) {
    r="R$i"
    c="C$j"
    result[i,j]=$r$c
    arg=$( sed -e "s@\[@@g" <<< "${output[count]}" )
    arg=$( sed -e "s@\]@@g" <<< "$arg" )
    arg=$( sed -e "s@,@@g" <<< "$arg" )
    # echo $arg ${result[i,j]}
    if [ "$arg" != "${result[i,j]}" ]; then
      echo "<br/><hr/><h3>Challenge Feedback</h3>"
      echo "Your code is not outputing the correct value"
      exit 1
    fi
    (( count++ ))
  }
}

echo "<br/><hr/><h3>Challenge Feedback</h3>"
echo "Well done you passed the challenge!"
exit 0

