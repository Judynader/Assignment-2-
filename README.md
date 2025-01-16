# GC Content Analysis Workflow

This project provides a **Nextflow workflow** designed to analyze the GC content of DNA sequences provided in a FASTA file. It identifies sequences with GC content above a specified threshold and outputs them into a results file.

## Features
- **Input:** Accepts a FASTA file and a GC content threshold as inputs.
- **Processing:** Calculates the GC content for each sequence in the input file using Biopython.
- **Output:** Writes sequences with GC content above the specified threshold into a file (`output.txt`) in a designated results directory.
- **Configuration:** Includes a configurable `nextflow.config` file for customizing the output directory and file handling.

## Requirements
- **Nextflow:** Version 24.10.0 or later.
- **Python:** Ensure Python 3.x is installed with the following library:
  - [Biopython](https://biopython.org/): Install using `pip install biopython`.

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/GC_Content_Analysis.git
