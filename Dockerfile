FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

RUN apt-get update && apt-get install -y \
    graphviz

RUN pip install --upgrade pip

RUN pip install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master \
plotly yapf keras pydot graphviz seaborn autopep8 jupyter_contrib_nbextensions

RUN jupyter contrib nbextension install --user && jupyter nbextensions_configurator enable --user
