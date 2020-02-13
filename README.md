# ![nf-core/smartseq2](docs/images/nf-core-smartseq2_logo.png)

**Preprocess scRNA-seq data generated with the SmartSeq2 protocol**.

[![Build Status](https://travis-ci.com/nf-core/smartseq2.svg?branch=master)](https://travis-ci.com/nf-core/smartseq2)
[![GitHub Actions CI Status](https://github.com/nf-core/smartseq2/workflows/nf-core%20CI/badge.svg)](https://github.com/nf-core/smartseq2/actions)
[![GitHub Actions Linting Status](https://github.com/nf-core/smartseq2/workflows/nf-core%20linting/badge.svg)](https://github.com/nf-core/smartseq2/actions)
[![Nextflow](https://img.shields.io/badge/nextflow-%E2%89%A519.10.0-brightgreen.svg)](https://www.nextflow.io/)

[![install with bioconda](https://img.shields.io/badge/install%20with-bioconda-brightgreen.svg)](http://bioconda.github.io/)
[![Docker](https://img.shields.io/docker/automated/nfcore/smartseq2.svg)](https://hub.docker.com/r/nfcore/smartseq2)

## Introduction

The pipeline is built using [Nextflow](https://www.nextflow.io), a workflow tool to run tasks across multiple compute infrastructures in a very portable manner. It comes with docker containers making installation trivial and results highly reproducible.

## Quick Start

i. Install [`nextflow`](https://nf-co.re/usage/installation)

ii. Install one of [`docker`](https://docs.docker.com/engine/installation/), [`singularity`](https://www.sylabs.io/guides/3.0/user-guide/) or [`conda`](https://conda.io/miniconda.html)

iii. Download the pipeline and test it on a minimal dataset with a single command

```bash
nextflow run nf-core/smartseq2 -profile test,<docker/singularity/conda/institute>
```

> Please check [nf-core/configs](https://github.com/nf-core/configs#documentation) to see if a custom config file to run nf-core pipelines already exists for your Institute. If so, you can simply use `-profile institute` in your command. This will enable either `docker` or `singularity` and set the appropriate execution settings for your local compute environment.

iv. Start running your own analysis!

<!-- TODO nf-core: Update the default command above used to run the pipeline -->

```bash
nextflow run nf-core/smartseq2 -profile <docker/singularity/conda/institute> --reads '*_R{1,2}.fastq.gz' --genome GRCh37
```

See [usage docs](docs/usage.md) for all of the available options when running the pipeline.

## Documentation

The nf-core/smartseq2 pipeline comes with documentation about the pipeline, found in the `docs/` directory:

1. [Installation](https://nf-co.re/usage/installation)
2. Pipeline configuration
   - [Local installation](https://nf-co.re/usage/local_installation)
   - [Adding your own system config](https://nf-co.re/usage/adding_own_config)
   - [Reference genomes](https://nf-co.re/usage/reference_genomes)
3. [Running the pipeline](docs/usage.md)
4. [Output and how to interpret the results](docs/output.md)
5. [Troubleshooting](https://nf-co.re/usage/troubleshooting)

This pipeline was developed to process single cell RNA-seq data generated
using the [Smart-Seq2 protocol](https://www.nature.com/articles/nprot.2014.006).

The pipeline features:

- Quality control using `fastqc` and `multiqc`
- Alignment using `STAR`
- Quantification using `rsem` or `featureCounts`
- TCR analysis using `TraCeR`.
- BCR analysis using `BraCeR`.

![flowchart](assets/flowchart.png)

## Credits

nf-core/smartseq2 was originally written by [Sandro Carollo](https://github.com/sandrocarollo),
[Giorgos Fotakis](https://github.com/abyssum) and [Gregor Sturm](https://github.com/grst)

## Contributions and Support

If you would like to contribute to this pipeline, please see the [contributing guidelines](.github/CONTRIBUTING.md).

For further information or help, don't hesitate to get in touch on [Slack](https://nfcore.slack.com/channels/smartseq2) (you can join with [this invite](https://nf-co.re/join/slack)).

## Citation

<!-- TODO nf-core: Add citation for pipeline after first release. Uncomment lines below and update Zenodo doi. -->
<!-- If you use  nf-core/smartseq2 for your analysis, please cite it using the following doi: [10.5281/zenodo.XXXXXX](https://doi.org/10.5281/zenodo.XXXXXX) -->

You can cite the `nf-core` pre-print as follows:  

> Ewels PA, Peltzer A, Fillinger S, Alneberg JA, Patel H, Wilm A, Garcia MU, Di Tommaso P, Nahnsen S. **nf-core: Community curated bioinformatics pipelines**. *bioRxiv*. 2019. p. 610741. [doi: 10.1101/610741](https://www.biorxiv.org/content/10.1101/610741v1).
