#!/bin/sh
SPOTPRICE=$(curl -s https://api.coindesk.com/v1/bpi/currentprice.json | jq -r '.bpi.USD.rate')
SPOTPRICE=${SPOTPRICE/,/}
SPOTPRICE=${SPOTPRICE/%.*}
SATSPERDOLLAR=$((100000000/SPOTPRICE))
DATETIME=$(curl -s https://api.coindesk.com/v1/bpi/currentprice.json | jq -r '.time.updated')
DMA_31=$(curl -s https://api.coindesk.com/v1/bpi/historical/close.json | jq -r '.bpi | to_entries | map(.value) | add/length' | awk '{printf "%.0f\n", $1}')
paste -d '\n' <(printf %s "Price: \$$SPOTPRICE") <(printf %s "Sats per dollar: $SATSPERDOLLAR") <(printf %s "30 Day Average: \$$DMA_31") <(printf %s "$DATETIME")
