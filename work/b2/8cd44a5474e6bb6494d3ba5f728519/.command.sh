#!/usr/bin/env python3
from Bio import SeqIO

cutoff = 0.6
with open('bacterial_dna.fasta', 'r') as infile, open('output.txt', 'w') as outfile:
    for record in SeqIO.parse(infile, "fasta"):
        gc_content = (record.seq.count('G') + record.seq.count('C')) / len(record.seq)
        if gc_content > cutoff:
            outfile.write(f">{record.id}\n{record.seq}\n")
