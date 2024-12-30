nextflow.enable.dsl = 2

process < name > {
    [ directives ] 



    input: 


    < process inputs >

    output: 


    < process outputs >

    when: 


    < condition >

    [script|shell|exec]: 


    """
    < user script to be executed > ##This if using script, using shebang declaration, we can use any language directly as script default takes it as shell script
    """
}

workflow {
    < name >(input to the process)
}