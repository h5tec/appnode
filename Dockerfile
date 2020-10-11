FROM        python:3.8-buster

RUN         mkdir -p /usr/src/app && \
            apt-get update && apt-get upgrade -y && \
            apt-get install -y apt-utils wget curl nginx net-tools ufw nano mtr htop gnupg2 sshpass ca-certificates && \
            apt-get install -y sysvinit-utils dnsutils python-certbot-nginx apt-transport-https software-properties-common && \
            pip install --upgrade pip && \
            pip install --no-cache-dir --upgrade tornado motor pymongo dnspython websocket-client speedtest-cli tormysql qrcode requests ipaddress six && \
            pip install --no-cache-dir --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib google-cloud-translate sqlor && \
            pip install --no-cache-dir --upgrade htmldom python-binance tradingview_ta python-telegram stockstats psutil pandas wrapt && \
            pip install --no-cache-dir --upgrade statistics numphy plotly pandas-ta pandas-ga blowfish cryptography web3 pywallet 
             
WORKDIR     /usr/src/app

COPY        main.py /usr/src/app/

EXPOSE      80

VOLUME      [ "/usr/src/app"  ]

ENTRYPOINT  [ "python", "main.py" ]
