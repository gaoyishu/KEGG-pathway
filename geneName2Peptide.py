import pandas as pd


# obtain gene name from selected file


name_file = pd.read_excel(r"colbes_besi_bzr_s_overlap.xlsx",sheet_name=2)
gene_name = name_file.iloc[:,0]
# print(type(gene_name))
# print(name_file.head(4))
gene_name = gene_name.tolist()
print(gene_name)


output_file = "colbes_besi_bzr_s_overlap_pro.txt"

with open("Arabidopsis_thaliana.TAIR10.pep.all.fa", "r") as pep_file:
    pep_line = pep_file.readlines()


f = open(output_file,'a+',encoding='utf-8')

for j in gene_name:
    for i in range(len(pep_line)):
        if j in pep_line[i]:
            print(pep_line[i])
            f.write(pep_line[i])

            cnt = 1

            while pep_line[cnt+i][0] != '>':
                print(pep_line[cnt+i])
                f.write(pep_line[cnt + i])
                i = i + 1

f.close()


