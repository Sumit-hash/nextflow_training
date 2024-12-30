nextflow.enable.dsl = 2

Channel
    .fromPath('file.json')
    .splitJson()
    .view()