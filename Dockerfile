FROM python:latest
RUN apt-get install libxml2-dev libxslt1-dev zlib1g-dev libffi-dev libssl-dev

WORKDIR /opt/app
ENV PAGER='/usr/bin/less -S'
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN python setup.py install
