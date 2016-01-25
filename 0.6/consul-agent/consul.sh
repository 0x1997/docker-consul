#!/bin/sh
[ -z "${PUBLIC_IP}" ] && echo "environment variable PUBLIC_IP not set!" && exit 1
[ -z "${SERF_LAN_PORT}" ] && echo "environment variable SERF_LAN_PORT not set!" && exit 1
[ -z "${SERF_WAN_PORT}" ] && echo "environment variable SERF_WAN_PORT not set!" && exit 1
[ -z "${RPC_PORT}" ] && echo "environment variable RPC_PORT not set!" && exit 1

cat <<EOF >config/runtime.json
{
    "advertise_addrs": {
        "serf_lan": "${PUBLIC_IP}:${SERF_LAN_PORT}",
        "serf_wan": "${PUBLIC_IP}:${SERF_WAN_PORT}",
        "rpc": "${PUBLIC_IP}:${RPC_PORT}"
    }
}
EOF

/bin/consul agent "$@"
