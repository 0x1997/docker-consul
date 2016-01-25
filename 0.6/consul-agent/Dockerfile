FROM 0x1997/consul:latest
ADD ./consul.sh /
ADD ./config /config/
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
ENV DNS_RESOLVES consul
ENV DNS_PORT 8600
ENTRYPOINT ["./consul.sh", "-config-dir=/config"]
