# Format: FROM    repository[:version]
FROM       ubuntu:latest

# Usage:
# docker run -it -v <your directory>:/documents/


ENV DEBIAN_FRONTEND noninteractive

# Update apt-get sources AND install stuff
RUN apt-get update && apt-get install -y -q python-sphinx python-pip texlive texlive-latex-extra pandoc build-essential

RUN apt-get install -y -q python-pip python-dev

RUN pip install rst2pdf
RUN pip install sphinx_rtd_theme

RUN mkdir documents

WORKDIR /documents
VOLUME /documents
