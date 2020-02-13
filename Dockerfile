FROM nfcore/base:1.8
LABEL authors="grst" \
      description="Docker image containing all requirements for nf-core/smartseq2 pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-smartseq2-1.0dev/bin:$PATH
RUN conda env export --name nf-core-smartseq2-1.0dev > nf-core-smartseq2-1.0dev.yml
