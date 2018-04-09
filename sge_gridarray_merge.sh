#!/bin/bash
#$-V
#$-cwd
#$-N merge
#$-l h_vmem=4G,h_rt=00:30:00
#$-hold_jid split

BAM=${1} #first argument is the name of the bam
BAM_BASE=`basename $BAM .bam` #extract the prefix to .bam
samtools view -bh ${BAM_BASE}.{1..22}.sorted.bam > ${BAM_BASE}.sorted.bam #recombine the split chromosomes.

