![LDBC_LOGO](https://raw.githubusercontent.com/ldbc/ldbc_finbench_docs/main/figures/ldbc-logo.png)

# LDBC FinBench Documentation

[Latest Specification](https://ldbcouncil.org/ldbc_finbench_docs/ldbc-finbench-specification.pdf)

It is a specification for LDBC Financial Benchmark in LaTeX.

## How to build this document

This repository contains the LaTeX source for the specification of the LDBC FinBench. This README discusses how to build the [specification [PDF](https://ldbcouncil.org/ldbc_finbench_docs/ldbc-finbench-specification.pdf) from the source.

### Generating query cards

To get consistent formatting, query cards are generated from query specifications defined in [YAML](http://yaml.org/) format. 

This is a necessary step to compile the document. You need to install,

* Pandoc
* Python3 and related required packages

### Building the document

To build the document locally, run `make all` or `make remake`. All actions are defined in Makefile.

## Related benchmarks

* **LDBC Social Network Benchmark:** [LDBC SNB: A Benchmark targets graph database management systems. Consists of two workloads, Interactive and Business Intelligence (work-in-progress)](https://github.com/ldbc/ldbc_snb_docs)
* **LDBC Graphalytics:** [LDBC Graphalytics: A Benchmark for Large-Scale Graph Analysis on Parallel and Distributed Platforms](http://www.vldb.org/pvldb/vol9/p1317-iosup.pdf), VLDB 2016 paper by A. Iosup et al. [[bib](bib/graphalytics.bib)], [The LDBC Graphalytics Benchmark](https://arxiv.org/pdf/2011.15028.pdf), technical report [[bib](bib/graphalytics-specification.bib)]
* **LDBC Semantic Publishing Benchmark:** [Benchmarking RDF Query Engines: The LDBC Semantic Publishing Benchmark](http://ceur-ws.org/Vol-1700/paper-01.pdf), BLINK at ISWC 2016 by V. Kotsev et al. [[bib](bib/spb.bib)]
* **LSQB (Labelled Subgraph Query Benchmark):** a [microbenchmark](https://github.com/ldbc/lsqb) focusing on subgraph queries (graph pattern matching) using labelled graphs produced by the LDBC data generator.