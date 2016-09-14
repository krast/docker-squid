# docker-squid

```
docker run  -v <Path>/squid.conf:/etc/squid/squid.conf:ro \
            -v <Path>/cache:/var/cache/squid:rw \
            -v /var/log/squid:/var/log/squid:rw \
            -v /etc/localtime:/etc/localtime:ro \
            -p 3128:3128 \
            krast0/squid
```

```
docker run  -d --name squid \
            --privileged \
            -v /var/cache/squid:/var/cache/squid:rw \
            -v /var/log/squid:/var/log/squid:rw \
            -v /etc/localtime:/etc/localtime:ro \
            krast0/squid
```
