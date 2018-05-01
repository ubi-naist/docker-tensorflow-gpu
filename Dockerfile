FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

RUN apt-get update && apt-get install -y \
    graphviz

RUN pip install --upgrade pip

RUN pip install keras pydot graphviz seaborn
