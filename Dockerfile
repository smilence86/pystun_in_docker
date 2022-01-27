FROM python:2

WORKDIR /usr/src/app

RUN git clone https://github.com/jtriley/pystun.git

# RUN ls -alh pystun

RUN cd pystun && python setup.py install

# RUN which pystun

# RUN pystun

CMD [ "pystun" ]
