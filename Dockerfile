FROM jupyter/scipy-notebook

MAINTAINER Pawel T.  Jochym <pawel.jochym@ifj.edu.pl>

RUN conda config --add channels conda-forge
RUN conda config --add channels jochym
RUN conda install -y ase spglib nglview elastic
RUN conda install -y -c damianavila82 rise

cp -r notebooks $HOME/work

USER root

# Add dependencies
#RUN sed 's/main/main contrib non-free/g' /etc/apt/sources.list
#RUN echo "deb http://www.deb-multimedia.org jessie main non-free" >> /etc/apt/sources.list.d/debian-multimedia.list
RUN apt-get update
RUN apt-get -y install abinit && apt-get clean

# Basic dependencies
#RUN apt-get install -y --force-yes deb-multimedia-keyring
#RUN apt-get update
#RUN apt-get install -y imagemagick povray ffmpeg abinit abinit-doc && apt-get clean
# Non-essential dependencies
# RUN apt-get install -y pandoc texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra && apt-get clean

