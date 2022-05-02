FROM continuumio/miniconda3
MAINTAINER muabnesor <adam.rosenbaum@umu.se>

LABEL description="Image for MetaXcan latest"

SHELL ["/bin/bash", "-c"]

ENV METAXCAN_VERSION 0.7.3
ENV MINICONDA_VERSION latest 


RUN git clone https://github.com/hakyimlab/MetaXcan
RUN conda env create -f MetaXcan/software/conda_env.yaml
ENV PATH /MetaXcan/software/:$PATH
RUN conda init bash
RUN echo "source activate imlabtools" > ~/.bashrc
