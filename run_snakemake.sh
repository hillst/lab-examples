#!/bin/bash

snakemake --cluster-config cluster.yaml --snakefile SnakeSort.smk --cluster "qsub -V -cwd -N snakesort -l h_rt={cluster.rt},h_rss={cluster.mem}" --jobs 22 test_data/test.final.bam
