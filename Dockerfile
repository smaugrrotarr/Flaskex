FROM ubuntu:18.04

RUN apt update -y && \
    apt install -y python-pip python-dev

RUN mkdir - p /usr/src/Flaskex/
COPY Flaskex /usr/src/Flaskex/
WORKDIR /usr/src/Flaskex/

RUN pip install -r requirements.txt

COPY . /usr/src/Flaskex/

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
