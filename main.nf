nextflow.enable.dsl=2

include { lifebitai_gwas_vcf_regenie_1 } from './modules/lifebitai_gwas_vcf_regenie_1/module.nf'

workflow {
input1 = Channel.fromPath(params.input1)
input2 = Channel.fromPath(params.input2)
input3 = Channel.fromPath(params.input3)
input4 = Channel.fromPath(params.input4)
input5 = Channel.fromPath(params.input5)
input6 = Channel.fromPath(params.input6)
input7 = Channel.fromPath(params.input7)
lifebitai_gwas_vcf_regenie_1(input1, input2, input3, input4, input5, input6, input7)
}
