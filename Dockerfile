FROM         python:buster

RUN          mkdir /usr/src/app && \
             pip install --no-cache-dir \
                tornado motor pymongo dnspython websocket-client speedtest-cli tormysql qrcode requests ipaddress six \
                google-api-python-client google-auth-httplib2 google-auth-oauthlib google-cloud-translate sqlor \
                htmldom python-binance tradingview_ta python-telegram stockstats psutil pandas wrapt \
                statistics numphy plotly pandas-ta pandas-ga blowfish cryptography web3 pywallet 
             
WORKDIR      /usr/src/app

COPY         main.py /usr/src/app/

EXPOSE       80

VOLUME       [ "/usr/src/app"  ]

ENTRYPOINT   [ "python", "main.py" ]
