// https://training.nextflow.io/basic_training/channels/#value-channels
nextflow.enable.dsl = 2

ch1 = Channel.of(1, 2, 3)
ch2 = Channel.value(1)
// Channel
//     .of(1..23, 'X', 'Y')
//     .view()
list = ['hello', 'world']

Channel
    .fromList(list)
    .view()

Channel
    .fromPath('./*.csv')
    .view()

Channel
    .fromFilePairs('./*_{1,2}.csv')
    .view()
// process SUM {
//     input:
//     val x
//     val y

//     output:
//     stdout

//     script:
//     """
//     echo \$(($x+$y))
//     """
// }

// workflow {
//     SUM(ch1, ch2).view()
// }