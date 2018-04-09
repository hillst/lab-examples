#$-V
#$-cwd
#$-N split
#$-t 1-22:1

BAM=${1}
BAM_BASE=`basename $BAM .bam`

samtools view ${BAM} ${SGE_TASK_ID} > ${BAM_BASE}.${SGE_TASK_ID}.bam

