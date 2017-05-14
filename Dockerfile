FROM jupyter/scipy-notebook
RUN conda config --add channels conda-forge
RUN conda config --add channels jochym
RUN conda install -y ase spglib jupyter nglview
