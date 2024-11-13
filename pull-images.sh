#!/bin/bash

docker login artifactory.raiffeisen.ru

docker pull artifactory.raiffeisen.ru/datalake-docker/ubuntu:latest
docker pull artifactory.raiffeisen.ru/datalake-docker/de-community-hadoop-hive-spark/postgres:11
docker pull artifactory.raiffeisen.ru/datalake-docker/jupyter/minimal-notebook:python-3.11.6
