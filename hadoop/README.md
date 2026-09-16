# BDA Lecture 3 Hadoop Docker Demo Package

This package is for an instructor-led Hadoop/HDFS/YARN/MapReduce demonstration.

## Requirements
- Docker Desktop installed and running
- 8 GB RAM recommended
- Internet connection for the first image download

## Start the Hadoop demo cluster
Open a terminal in this folder and run:

```bash
docker compose up -d
```

Check running containers:

```bash
docker ps
```

Open web interfaces:

- NameNode UI: http://localhost:9870
- ResourceManager UI: http://localhost:8088
- DataNode UI: http://localhost:9864
- HistoryServer UI: http://localhost:8188

## Run HDFS and MapReduce demo
Enter the NameNode container:

```bash
docker exec -it namenode bash
```

Inside the container, run:

```bash
bash /localdata/run_hdfs_wordcount.sh
```

If the script is not visible from inside the container, copy/paste these commands manually:

```bash
hdfs dfsadmin -report
hdfs dfs -mkdir -p /input
hdfs dfs -put -f /localdata/sample.txt /input/sample.txt
hdfs dfs -ls /input
hdfs dfs -cat /input/sample.txt
hdfs dfs -rm -r -f /output
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar wordcount /input /output
hdfs dfs -cat /output/part-r-00000
```

## Stop containers after class

```bash
docker compose down
```

## Remove all volumes and reset completely
Only do this if you want to remove stored HDFS data:

```bash
docker compose down -v
```
