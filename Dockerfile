FROM         python:buster

RUN          apt-get update && apt-get install -y && \
             mkdir /usr/src/app && \
             pip install pip --upgrade && \
             pip install --no-cache-dir six && \
             pip install --no-cache-dir \
             tornado \
             motor \
             dnspython \
             websocket-client \
             speedtest-cli \
             tormysql \
             sqlor \
             cryptography \
             pywallet \
             blowfish \
             web3 \
             google-api-python-client \
             google-auth-httplib2 \
             google-auth-oauthlib \
             google-cloud-translate \
             requests \
             ipaddress \
             pymongo \
             python-binance \
             shrimpy-python \
             numphy \
             pandas \
             pandas-ta \
             pandas-ga \
             plotly \
             unicorn-binance-websocket-api \
             unicorn-fy \
             yaspin \
             pyti \
             qrcode
             
WORKDIR      /usr/src/app

COPY         main.py /usr/src/app/

EXPOSE       80

VOLUME       [ "/usr/src/app"  ]

ENTRYPOINT   [ "python", "main.py" ]
