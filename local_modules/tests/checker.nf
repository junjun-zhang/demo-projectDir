#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { hello } from "../hello"
include { awesome } from "$projectDir/public_modules/utilities"

workflow {
  println("projectDir: $projectDir")
  message = awesome()
  hello(message)
} 
