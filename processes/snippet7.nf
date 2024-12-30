reads_ch = Channel.fromFilePairs('data/ggal/*_{1,2}.fq')

process FOO {
    publishDir "results/bam", pattern: "*.bam"
    publishDir "results/bai", pattern: "*.bai"

    input:
    tuple val(sample_id), path(sample_id_paths)

    output:
    tuple val(sample_id), path("*.bam")
    tuple val(sample_id), path("*.bai")

    script:
    """
    echo your_command_here --sample $sample_id_paths > ${sample_id}.bam
    echo your_command_here --sample $sample_id_paths > ${sample_id}.bai
    """
}

workflow {
    FOO(reads_ch)
}