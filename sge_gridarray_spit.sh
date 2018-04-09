#$-V
#$-cwd
#$-N split
#$-t 1-22:1
#$-l h_vmem=2G,h_rt=00:30:00

#-t flag sets the SGE_TASK_ID to be one of 1-22, we then use that number to extract each chromosome

# h_rt lets us run fast!
# qsub sge_gridarray_split.sh mybam.bam

BAM=${1} #takes first argument as bam
BAM_BASE=`basename $BAM .bam` #extracts mybam from mybam.bam

samtools view -b ${BAM} ${SGE_TASK_ID} | samtools sort - ${BAM_BASE}.${SGE_TASK_ID}.sorted #sorts broken by chr

#samtools view -b ${BAM} chr${SGE_TASK_ID} | samtools sort - ${BAM_BASE}.${SGE_TASK_ID}.sorted #splits by chromosome if your tid's start with chr.

