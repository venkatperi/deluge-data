FROM venkatperi/baseimage-supervisor
MAINTAINER Venkat Peri <venkatperi@gmail.com>
    
RUN  mkdir -p /etc/deluge  
COPY etc/deluge/ /etc/deluge/

RUN mkdir -p /var/lib/deluge && \
    mkdir -p /var/log/deluge && \
    mkdir -p /var/run/deluge && \
    chown -R service:service /etc/deluge && \
    chown -R service:service /var/log/deluge  && \
    chown -R service:service /var/lib/deluge  && \
    chown -R service:service /var/run/deluge  


VOLUME ["/etc/deluge","/var/lib/deluge","/var/log/deluge","/var/run/deluge"]

