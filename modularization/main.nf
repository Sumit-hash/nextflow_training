nextflow.enable.dsl=2

params.greeting  = 'Hello world!'
greeting_ch = Channel.of(params.greeting)
greeting_ch.view()

include { SPLITLETTERS   } from './modules.nf'
include { CONVERTTOUPPER } from './modules.nf'

workflow first_workflow {
    greeting_ch = Channel.of(params.greeting)
    letters_ch = SPLITLETTERS(greeting_ch)
    results_ch = CONVERTTOUPPER(letters_ch.flatten())
    results_ch.view { it }
}

workflow {
    first_workflow()
}

workflow.onComplete {
    log.info ( workflow.success ? "\nDone! Open the following report in your browser \n" : "Oops .. something went wrong" )
}
// if (workflow.errorMessage) {
//     log.error ( workflow.errorMessage ? "\n Error message" )
// }