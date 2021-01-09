# Command-line BTC Price Ticker

### Overview
Displays the price of bitcoin and the 30-day moving average. Uses CoinDesk price API.

### Requirements
* [jq library](https://stedolan.github.io/jq) "command-line JSON processor") - command-line JSON processor

### Execution
1. Ensure appropriate permissions are given to execute bash file (e.g., `chmod +x btc_price ticker.sh`). Dave McKay's article [How to Use the chmod Command on Linux](https://www.howtogeek.com/437958/how-to-use-the-chmod-command-on-linux/ "How to Use the chmod Command on Linux") has a robust, but straightforward explanation.
2. `watch -n 60 "bash btc_price_ticker.sh"`

### Notes
* Coming soon: Sats per dollar
* CoinDesk API appears unresponsive when connected to a VPN service

### All feedback is welcome!
