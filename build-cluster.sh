#!/bin/bash

docker volume rm hadoop-hive-spark_datanode1 hadoop-hive-spark_datanode2 hadoop-hive-spark_metastore hadoop-hive-spark_namenode

docker build -t hadoop-hive-spark-base ./base
docker build -t hadoop-hive-spark-master ./master
docker build -t hadoop-hive-spark-worker ./worker
docker build -t hadoop-hive-spark-history ./history
docker build -t hadoop-hive-spark-jupyter ./jupyter
