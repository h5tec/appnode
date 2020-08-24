FROM         python:buster

RUN          apt-get update && apt-get install -y && \
             mkdir /usr/src/app && \
             pip install pip --upgrade && \
             pip install --no-cache-dir tornado motor pymongo dnspython websocket-client speedtest-cli tormysql pandas qrcode requests ipaddress six wrapt && \
             pip install --no-cache-dir google-api-python-client google-auth-httplib2 google-auth-oauthlib google-cloud-translate sqlor && \
             pip install --no-cache-dir python-binance shrimpy-python unicorn-binance-websocket-api unicorn-fy yaspin pyti && \
             pip install --no-cahce-dir numphy plotly pandas-ta pandas-ga blowfish cryptography web3 pywallet 
             
WORKDIR      /usr/src/app

COPY         main.py /usr/src/app/

EXPOSE       80

VOLUME       [ "/usr/src/app"  ]

ENTRYPOINT   [ "python", "main.py" ]
