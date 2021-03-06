cut -c4-18 N_specific_gene_txt N_specific_genet_name
grep -f N_specific_genet_name GCA_000004515.3_Glycine_max_v2.0_genomic.gff > gene_NCBI
awk '{print $13}' gene_NCBI > NCBI_protein
cut -c20-29 NCBI_protein > NCBI_protein_name
sort -u NCBI_protein_name > NCBI_protein_name1
rm NCBI_protein_name |mv NCBI_protein_name1 NCBI_protein_name    #change gene name
https://www.ncbi.nlm.nih.gov/sites/batchentrez; select protein item; upload your NCBI protein ID file
run in kobas; select protein sequene
Nodule_specifi_gene_protein_sequence in taskid=170424722390718 170424748947693
Root_specific_gene_protein_sequence in taskid=170505959996047
5%_nodule_sequence in taskid=170713036630248
