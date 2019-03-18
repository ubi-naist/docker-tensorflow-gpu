FROM tensorflow/tensorflow:1.12.0-gpu-py3

RUN apt-get update && apt-get install -y \
    git graphviz

RUN pip install --upgrade pip

RUN pip install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master \
plotly yapf keras pydot graphviz seaborn autopep8 jupyter_contrib_nbextensions

RUN jupyter contrib nbextension install --user && jupyter nbextensions_configurator enable --user
