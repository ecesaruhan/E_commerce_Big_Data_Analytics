#!/usr/bin/env bash
set -e

echo "Creating HDFS input directory..."
hdfs dfs -mkdir -p /input

echo "Uploading sample.txt into HDFS..."
hdfs dfs -put -f /localdata/sample.txt /input/sample.txt

echo "Listing files in /input..."
hdfs dfs -ls /input

echo "Showing input file from HDFS..."
hdfs dfs -cat /input/sample.txt

echo "Removing old output directory if it exists..."
hdfs dfs -rm -r -f /output

echo "Running Hadoop MapReduce WordCount..."
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar wordcount /input /output

echo "Final output from HDFS:"
hdfs dfs -cat /output/part-r-00000
