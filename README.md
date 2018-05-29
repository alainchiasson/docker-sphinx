# docker-sphinx
[Sphinx](http://sphinx-doc.org/) documentation toolchain, latex dependencies and [pandoc](http://johnmacfarlane.net/pandoc) in an Ubuntu docker container.

## Contained packages
* python-sphinx
* texlive  
* texlive-latex-recommended 
* texlive-latex-extra 
* texlive-lang-european 
* texlive-fonts-recommended 
* pandoc
* build-essential

## How to Use it

    docker run -it -v <your directory>:/documents/ vgbpowertech/sphinx

on Windows docker-machine f.e.

    docker run -it -v /c/Users/myusername/mySphinxDocs:/documents vgbpowertech/sphinx

Use `sphinx-quickstart` to create a new Sphinx project, and `make` to use the auto generated `Makefile` in an existing project. More info in the [Sphinx tutorial](http://sphinx-doc.org/tutorial.html).

The built container is available at the [Docker Hub](https://hub.docker.com/r/vgbpowertech/sphinx/).

Based on [plaindocs/docker-sphinx](https://github.com/plaindocs/docker-sphinx) - added ` texlive-latex-recommended` and `texlive-lang-european`