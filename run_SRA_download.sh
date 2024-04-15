#!/bin/bash

 for i in $(cat /scratch/group/isinghlab/projects/IPA_data/GSE214980_PTCL/rna/SRR_Acc_List_GSE214980_PTCL_RNAseq.txt); do sbatch /scratch/user/richa.rashmi.1202/tools/SRA_download.sh $i; done