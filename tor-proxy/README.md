# tor-proxy
```
docker run -d -p 9050:9050 -p 9052:9052 -p 9053:9053 chrissx/tor-proxy
```
Opens a SOCKSv5 proxy on port `9050`, an HTTP proxy on port `9052` and a
DNS server on port `9053`.
