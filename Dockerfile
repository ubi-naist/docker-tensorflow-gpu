FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

RUN pip install --upgrade pip

RUN pip install keras
