FROM       ubuntu:xenial

# Usage:
# docker run -it -v <your directory>:/documents/


ENV DEBIAN_FRONTEND noninteractive

# Update apt-get sources AND install stuff
RUN apt-get update && \
    apt-get install -y -q python-sphinx texlive  texlive-latex-recommended texlive-latex-extra texlive-lang-european texlive-fonts-recommended pandoc
RUN apt-get install -y -q build-essential

RUN pip install rst2pdf sphinx_rtd_theme

RUN mkdir documents

WORKDIR /documents
VOLUME /documents
