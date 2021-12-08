FROM docker.io/continuumio/miniconda3:4.10.3-alpine

# perl-cgi is an unlisted dependency required by Trinotate
RUN conda install -c bioconda trinotate=3.2.2 perl-cgi
