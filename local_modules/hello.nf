#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { awesome } from "$projectDir/public_modules/utilities"

process hello {
  input:
    val message

  script:
    """
    echo "hello ${message}"
    """
}

workflow {
  println("projectDir: $projectDir")
  hello("projectDir: $projectDir")
}
