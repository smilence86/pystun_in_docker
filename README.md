# description

Detect nat type with docker command in linux, support amd64, arm32, arm64
  
# Dockerfile
  
```
FROM python:2

WORKDIR /usr/src/app

RUN git clone https://github.com/jtriley/pystun.git

RUN cd pystun && python setup.py install

CMD [ "pystun" ]
```
  
  # usage
```
docker run -it --rm --network=host smilence86/pystun
```

# output
```
NAT Type: Full Cone
External IP: xxx.xxx.xxx.xxx
External Port: 54320
```