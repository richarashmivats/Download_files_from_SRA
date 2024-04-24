#!/bin/bash

	while getopts s:o: flag
	do
	    case "${flag}" in
	        s) sra_list_file=${OPTARG};;
	        o) output_dir=${OPTARG};;
	    esac
	done

 for i in $(cat $sra_list_file); do sbatch SRA_download.sh $i $output_dir; done


 #########################################################
# run script as :
# sh run_SRA_download.sh -s <path to .txt file containing SRA IDs>  -o <path to output fastq files>
#########################################################
