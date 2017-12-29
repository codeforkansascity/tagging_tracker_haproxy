FROM haproxy:1.7
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
RUN useradd -ms /bin/bash haproxy
EXPOSE 80
EXPOSE 443
