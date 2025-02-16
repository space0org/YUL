#!/bin/bash

echo "Verifying YUL blockchain node parameters..."

# Function to check RPC command results
check_rpc() {
    local result=$(bitcoin-cli -conf=/data/bitcoin.conf "$@")
    if [ $? -ne 0 ]; then
        echo "ERROR: Failed to execute bitcoin-cli $@"
        exit 1
    fi
    echo "$result"
}

echo "Checking network configuration..."
check_rpc getnetworkinfo

echo "Checking mining configuration..."
check_rpc getmininginfo

echo "Checking blockchain configuration..."
check_rpc getblockchaininfo

# Verify specific parameters
echo "Verifying critical parameters..."
CONFIG_FILE="/data/bitcoin.conf"

declare -A REQUIRED_PARAMS=(
    ["port"]="8333"
    ["rpcport"]="8332"
    ["dbcache"]="16384"
    ["maxmempool"]="2000"
    ["maxsigcachesize"]="260"
    ["maxscriptcachesize"]="260"
    ["excessiveblocksize"]="2000000000"
    ["maxstackmemoryusageconsensus"]="200000000"
    ["genesisactivationheight"]="1"
    ["blockmaxsize"]="512000000"
)

for param in "${!REQUIRED_PARAMS[@]}"; do
    value=$(grep "^$param=" "$CONFIG_FILE" | cut -d'=' -f2)
    if [ "$value" != "${REQUIRED_PARAMS[$param]}" ]; then
        echo "ERROR: Parameter $param does not match required value"
        echo "Expected: ${REQUIRED_PARAMS[$param]}"
        echo "Found: $value"
        exit 1
    fi
done

echo "All parameters verified successfully"
