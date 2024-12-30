nextflow.enable.dsl=2
reads_ch = Channel.fromFilePairs('*_{1,2}.csv')
reads_ch.view()

process FOO {
    input:
    tuple val(sample_id), path(sample_id_paths)

    output:
    tuple val(sample_id), path('sample.bam')

    script:
    """
    echo "your_command_here --sample $sample_id_paths" > sample.bam
    """
}

workflow {
    sample_ch = FOO(reads_ch)
    sample_ch.view()
    // sample_ch.out.view()
}