#!/bin/bash
service_name=$1
instance_id=$2
ip=$3
port=$4

curl -X PUT -d '{"id": "'"$instance_id"'","name": "'"$service_name"'","address": "'"$ip"'","port": '"$port"',"tags": ["'"$service_name"'"],"checks": [{"http": "http://'"$ip"':'"$port"'","interval": "5s"}]}' http://192.168.122.155:8500/v1/agent/service/register
