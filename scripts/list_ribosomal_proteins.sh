# Author: Izaak Coleman
# Created: 16/11/2018

# This script searches through each protein fasta files,
# prints the file name, and underneath the file name
# prints all fasta headers within that file
# containing $phrase ("ribosomal protein")
# The script was intended to be used on the protein fasta files
# from each species of the HMP.

# The output of the script is intended for the following use:
# From each header, the protein name will be extracted
# and the protein names will be used to find the intersection of
# ribosomal proteins for all species (i.e the ribosomal proteins shared
# by all species). This relies upon the correct prediction of the protein
# name by ncbi - use of the sequence data itself may be more accurate.


phrase="ribosomal protein"
for file in $1; do
  echo $file
  gunzip -c $file | grep "$phrase"
done
