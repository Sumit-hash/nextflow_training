nextflow.enable.dsl = 2

reads = Channel.fromPath('*.csv')
reads.view()
process FOO {
    // debug true // This is not working
    debug=true //This is working

    input:
    path sample

    script:
    """
    ls ${sample}
    """
}

workflow {
    result = FOO(reads)
}