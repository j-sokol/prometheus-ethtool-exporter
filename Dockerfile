FROM python:3-alpine

RUN apk add --no-cache ethtool && \
    ln -s /usr/sbin/ethtool /sbin/ethtool

RUN pip install prometheus_client

COPY ethtool-exporter.py /

ENTRYPOINT ["python3", "/ethtool-exporter.py"]