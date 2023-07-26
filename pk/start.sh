#!/bin/bash
DATADIR="./blockchain"
CURRENTDIR=${PWD##*/}
PRODUCER_PUB_KEY="EOS88QpBHpd8HBsaY6fLh7ZJ4BogwFXQ76b9viTWyCGjiD9DZJwM4"
PRODUCER_PRIV_KEY="5JqoZD82w6Kbs9SAPvRxWRSswceEiu7FvwbUnhcNCM1Xm9jEthT"
HTTP_PORT=8111
P2P_PORT=9111
if [ ! -d $DATADIR ]; then
  mkdir -p $DATADIR;
fi

nodeos \
--signature-provider $PRODUCER_PUB_KEY=KEY:$PRODUCER_PRIV_KEY \
--plugin eosio::producer_plugin \
--plugin eosio::producer_api_plugin \
--plugin eosio::chain_plugin \
--plugin eosio::chain_api_plugin \
--plugin eosio::http_plugin \
--plugin eosio::history_api_plugin \
--plugin eosio::history_plugin \
--data-dir $DATADIR"/data" \
--blocks-dir $DATADIR"/blocks" \
--config-dir $DATADIR"/config" \
--producer-name $CURRENTDIR \
--http-server-address 127.0.0.1:$HTTP_PORT \
--p2p-listen-endpoint 127.0.0.1:$P2P_PORT \
--access-control-allow-origin=* \
--contracts-console \
--http-validate-host=false \
--verbose-http-errors \
--enable-stale-production \
--p2p-peer-address localhost:9010 \
--p2p-peer-address localhost:9101 \
--p2p-peer-address localhost:9102 \
--p2p-peer-address localhost:9103 \
--p2p-peer-address localhost:9104 \
--p2p-peer-address localhost:9105 \
--p2p-peer-address localhost:9106 \
--p2p-peer-address localhost:9107 \
--p2p-peer-address localhost:9108 \
--p2p-peer-address localhost:9109 \
--p2p-peer-address localhost:9110 \
--p2p-peer-address localhost:9112 \
--p2p-peer-address localhost:9113 \
--p2p-peer-address localhost:9114 \
--p2p-peer-address localhost:9115 \
--p2p-peer-address localhost:9116 \
--p2p-peer-address localhost:9117 \
--p2p-peer-address localhost:9118 \
--p2p-peer-address localhost:9119 \
--p2p-peer-address localhost:9120 \
--p2p-peer-address localhost:9121 \
--p2p-peer-address localhost:9122 \
--p2p-peer-address localhost:9123 \
--p2p-peer-address localhost:9124 \
--p2p-peer-address localhost:9125 \
--p2p-peer-address localhost:9126 \
>> $DATADIR"/nodeos.log" 2>&1 & \
echo $! > $DATADIR"/eosd.pid"
