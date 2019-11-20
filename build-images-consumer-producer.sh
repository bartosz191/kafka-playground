#!/bin/bash

# Build logstash producer 
docker build -t logstash_producer -f ecs/logstash-producer.Dockerfile .

# Build logstash consumer
docker build -t logstash_consumer -f ecs/logstash-consumer.Dockerfile .

aws-profile -p telemetry-internal-lab04  ecs-cli  push 047384126872.dkr.ecr.eu-west-2.amazonaws.com/msk-elk --help
