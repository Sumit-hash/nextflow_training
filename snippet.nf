// https://training.nextflow.io/basic_training/channels/#value-channels
// ch = Channel.of(1, 2, 3)
// ch.view()

ch1 = Channel.of(1, 2, 3)
ch2 = Channel.of(1, 4, 3, 1)

process SUM {
    input:
    val x
    val y

    output:
    stdout

    script:
    """
    echo "x = $x"
    echo "y = $y"
    echo \$(($x+$y))
    """
}

workflow {
    SUM(ch1, ch2).view()
}