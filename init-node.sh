#!/bin/bash
set -exm

export RPC_PORT=19443
export PORT=19444
export NODE_NAME="node"

mkdir $NODE_NAME

litecoind -dns=0 -datadir=$NODE_NAME -rpcport=$RPC_PORT -port=$PORT -regtest=1 -printtoconsole -rpcbind=* -rpcallowip=0.0.0.0/0 -rpcpassword=password -rpcuser=user -txindex=1 -minrelaytxfee=0 &

sleep 10

ADDRESS=$(litecoin-cli -rpcport=$RPC_PORT -regtest=1 -rpcpassword=password -rpcuser=user getnewaddress)

litecoin-cli -rpcport=$RPC_PORT -regtest=1 -rpcpassword=password -rpcuser=user generatetoaddress 432 "$ADDRESS"

fg
