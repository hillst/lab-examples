rule split_sort_bams:
    input:
        bam="{prefix}/{bamname}.bam",
        bai="{prefix}/{bamname}.bam.bai"
    output:
        "{prefix}/split_bams/{bamname}.{chromosome}.bam"
    shell:
        "samtools view -hb {input.bam} {wildcards.chromosome} | samtools sort -f - {output}"

rule index:
    input:
        "{bamname}.bam"
    output:
        "{bamname}.bam.bai"
    shell:
        "samtools index {input}" 

rule sort_bam:
    input:
        "{bamname}.bam"
    output:
        "{bamname}.sorted.bam"
    shell:
        "samtools sort {input} > {output}"

rule merge_sorted_bams:
    input:
        expand("{{prefix}}/split_bams/{{bamname}}.{chromosome}.sorted.bam", chromosome=range(1,23)),
        expand("{{prefix}}/split_bams/{{bamname}}.{chromosome}.sorted.bam.bai", chromosome=range(1,23))
    output:
        "{prefix}/{bamname}.final.bam"
    shell:
        "samtools view -bh {input} > {output}"
        

