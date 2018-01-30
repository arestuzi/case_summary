#!/bin/bash
filename_org=`date +%s`
filename=`expr $filename_org % 10000000`
case_summary='case_summary'
case_log='case_log'
type=$1

mkdir -p $case_summary/$1/$filename
if [ $? -ne 0 ]; then
  echo "error occured, need to check"
else
  echo "$case_summary/$filename created"
fi
echo -e "Problem Statement\nDescription\nSolution\n">> $case_summary/$1/$filename/$case_summary
mkdir -p $case_log/$filename 
if [ $? -ne 0 ]; then
  echo "error occured, need to check"
else
  echo "$case_log/$filename created"
fi
atom $case_summary/$1/$filename/case_summary

