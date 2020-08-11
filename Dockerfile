FROM python:slim

RUN apt-get update && apt-get install -y python-pip python-dev libffi-dev libssl-dev
RUN python -m pip install --upgrade pip

WORKDIR /broadlink-mqtt
COPY . .
RUN pip install -r requirements.txt

CMD ["python", "mqtt.py"]