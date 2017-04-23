cut -c4-18 N_specific_gene_txt N_specific_genet_name
grep -f N_specific_genet_name GCA_000004515.3_Glycine_max_v2.0_genomic.gff > gene_NCBI
awk '{print $13}' gene_NCBI > NCBI_protein
cut -c20-29 NCBI_protein > NCBI_protein_name
sort -u NCBI_protein_name > NCBI_protein_name1

