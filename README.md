# Example

```
./run.sh 
Error response from daemon: network with name nginx-proxy already exists
docker-compose version 1.21.1, build 5a3f1a3
service1_web_1 is up-to-date
service1_db_1 is up-to-date
Creating service2_web_1 ... done
Creating service2_db_1  ... done
Attaching to service2_web_1, service2_db_1
web_1  | Found for db: 172.19.0.2,172.19.0.5,
```

Notice that the web service finds multiple entries with the hostname `db`.

A workaround would be to use the full container name:

```
# docker run -it --network=nginx-proxy tutum/dnsutils /bin/bash
root@1889d7dad433:/# dig +short db
172.19.0.2
172.19.0.5
root@1889d7dad433:/# dig +short service1_db_1
172.19.0.2
```

But you may not always know the full container name when you are writing the compose file. There is an open docker-compose issue to resolve this: https://github.com/docker/compose/issues/1503
