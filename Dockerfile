FROM python:2-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

WORKDIR /usr/src/app

RUN git clone https://github.com/jtriley/pystun.git

# RUN ls -alh pystun

RUN cd pystun && python setup.py install

# RUN which pystun

# RUN pystun

CMD [ "sh", "-c", "echo '\n\nDetecting, please wait a moment...\n'; pystun" ]
