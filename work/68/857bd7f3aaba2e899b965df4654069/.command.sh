#!/usr/bin/env python3
from Bio import SeqIO

print("Starting GC Content Analysis...")
cutoff = 0.6
with open('bacterial_dna.fasta', 'r') as infile, open('output.txt', 'w') as outfile:
    for record in SeqIO.parse(infile, "fasta"):
        print(f"Processing sequence: {record.id}")
        gc_content = (record.seq.count('G') + record.seq.count('C')) / len(record.seq)
        print(f"GC Content for {record.id}: {gc_content}")
        if gc_content > cutoff:
            print(f"Sequence {record.id} passed the cutoff. Writing to output.")
            outfile.write(f">{record.id}\n{record.seq}\n")
