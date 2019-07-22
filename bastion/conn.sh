#!/bin/bash

# writer your server dns or IP address with blank. 
# index starts with zero (0).
api_servers=(api1 api2)
admin_servers=(admin1 admin2)
zk_servers=(zk1 zk2)
kafka_servers=(kafka1 kafka2)
log_servers=(log1 log2)

modules=(api admin zk kafka log)
user=$user

for i in "${!modules[@]}"
do
    echo "$i) ${modules[$i]}"
done
read -p "Select module number: " num
read -p "Select server number to connect: " server_num

case ${modules[$num]} in
    "api")
        ssh $userr@${api_servers[$server_num-1]}
        ;;
    "admin")
        ssh $user@${admin_servers[$server_num-1]}
        ;;
    "zk")
        ssh $user@${zk_servers[$server_num-1]}
        ;;
    "kafka")
        ssh $user@${kafka_servers[$server_num-1]}
        ;;
    "log")
        ssh $user@${log_servers[$server_num-1]}
        ;;
esac

