#!/bin/bash
#$-V
#$-cwd
#$-N merge
#$-hold_jid split

BAM=${1} #first argument is the name of the bam
BAM_BASE=`basename $BAM .bam` #extract the prefix to .bam
samtools view ${BAM_BASE}.{1..22}.bam > ${BAM_BASE}.merged.bam #recombine the split chromosomes.

