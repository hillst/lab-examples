#$-V
#$-cwd
#$-N split
#$-t 1-22:1

#-t flag sets the SGE_TASK_ID to be one of 1-22, we then use that number to extract each chromosome

# qsub sge_gridarray_split.sh mybam.bam

BAM=${1} #takes first argument as bam
BAM_BASE=`basename $BAM .bam` #extracts mybam from mybam.bam

samtools view ${BAM} ${SGE_TASK_ID} > ${BAM_BASE}.${SGE_TASK_ID}.bam #splits by chromosome.

#samtools view ${BAM} chr${SGE_TASK_ID} > ${BAM_BASE}.${SGE_TASK_ID}.bam #splits by chromosome if your tid's start with chr.

