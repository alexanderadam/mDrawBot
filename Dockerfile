FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN adduser --quiet --disabled-password mdrawbotuser && \
    usermod -G dialout mdrawbotuser

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-tk python3-setuptools libgl1-mesa-glx libxkbcommon0 libxkbcommon-x11-0 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install pySerial pyqt5==5.14
