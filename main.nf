nextflow.enable.dsl=2

process filterGCContent {
    publishDir "${workDir}/results", mode: 'copy'

    input:
    path fastaFile

    output:
    path 'output.txt'

    script:
    """
    #!/usr/bin/env python3
    from Bio import SeqIO
    cutoff = ${params.cutoff}
    with open('${fastaFile}', 'r') as infile, open('output.txt', 'w') as outfile:
        for record in SeqIO.parse(infile, "fasta"):
            gc_content = (record.seq.count('G') + record.seq.count('C')) / len(record.seq)
            if gc_content > cutoff:
                outfile.write(f">{record.id}\\n{record.seq}\\n")
    """
}

workflow {
    inputChannel = Channel.fromPath(params.inputFile)
    filterGCContent(inputChannel)
}
