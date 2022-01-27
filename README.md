# description

Detect nat type with docker command in linux, support amd64, arm32, arm64
  
# Dockerfile
  
```
FROM python:2-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

WORKDIR /usr/src/app

RUN git clone https://github.com/jtriley/pystun.git

RUN cd pystun && python setup.py install

CMD [ "sh", "-c", "echo '\n\nDetecting, please wait a moment...\n'; pystun" ]
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
  
or
  
```
NAT Type: Blocked
External IP: None
External Port: None
```
