FROM 0x1997/consul-agent:latest
ADD ./config /config/
ENTRYPOINT ["./consul.sh", "-server", "-config-dir=/config"]
