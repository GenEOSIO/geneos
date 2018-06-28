# GENEOS

## Set up GENEOS (Single Node Testnet)

```
git clone https://github.com/GenEOSIO/geneos --recursive
cd geneos
./eosio_build.sh
cd build
sudo make install
```

Run nodgeneos
```
$ nodgeneos
```
Press Ctrl + C

Edit config.ini

```
$ vim ~/.local/share/geneosio/nodgeneos/config/config.ini

# Find and change ( This will be the IP you saved before, something like 192.168.56.101 )
http-server-address = 192.168.56.101:8888

# Find and switch to true
enable-stale-production = true

# Find, remove "#", and change to "eosio"
producer-name = eosio

# Copy the following plugins to the bottom of the file
plugin = eosio::producer_plugin
plugin = eosio::wallet_api_plugin
plugin = eosio::chain_api_plugin
plugin = eosio::http_plugin
plugin = eosio::history_api_plugin
```
Restart nodgeneos

```
$ nodgeneos --delete-all-blocks
```

## Connect from wallet 

```
$ clgeneos -u http://192.168.56.101:8888 get info
```
