#!/bin/bash
DATADIR="./blockchain"

if [ ! -d $DATADIR ]; then
  mkdir -p $DATADIR;
fi

nodeos \
--genesis-json $DATADIR"/../../genesis.json" \
--signature-provider EOS7iFbk4YnaHzhzSH5fpnSpaa7mYczq9eufxL9A7ofFRucHWoZa9=KEY:5HsoPUfQiuY9NZZzgbmUHow15757YZy6ELMCXz5SkRcmwECt7yZ \
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
--producer-name eosio \
--http-server-address 127.0.0.1:8888 \
--p2p-listen-endpoint 127.0.0.1:9010 \
--access-control-allow-origin=* \
--contracts-console \
--http-validate-host=false \
--verbose-http-errors \
--enable-stale-production \
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
--p2p-peer-address localhost:9111 \
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
