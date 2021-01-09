# Command-line BTC Price Ticker

### Overview
Displays the price of bitcoin and the 30-day moving average.

### Requirements
* [jq library](https://stedolan.github.io/jq) "command-line JSON processor") - command-line JSON processor

### Usage
1. Ensure appropriate permissions are given to execute bash file (e.g., `chmod +x btc_price ticker.sh`). Dave McKay's article [How to Use the chmod Command on Linux](https://www.howtogeek.com/437958/how-to-use-the-chmod-command-on-linux/ "How to Use the chmod Command on Linux") has a robust, but straightforward explanation.
2. Run the command `watch -n 60 "bash btc_price_ticker.sh"` from Terminal environment
3. Exit using the standard CTRL+C program cancellation method

### Notes
* Powered by [CoinDesk](https://www.coindesk.com/price/bitcoin "CoinDesk Bitcoin price page")
* CoinDesk API appears unresponsive when connected to a VPN service

### All feedback is welcome!
