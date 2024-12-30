nextflow.enable.dsl=2

process FOO {
    cpus 2
    memory 1.GB
    container 'image/name'
    conda 'conda path'
    executer 'awsbatch/local/pbs/slurm'
    time '1h'

    script:
    """
    echo your_command --this --that
    """
}