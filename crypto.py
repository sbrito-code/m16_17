import cryptocompare as cc
import datetime

coin = cc.get_price('DOGE', currency='USD')
print(coin)

coin = cc.get_price('SHIB', currency='USD')
print(coin)

coin = cc.get_price(['BTC', 'ETH'], ['USD', 'USD'])
print(coin)