#!/bin/bash

##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=fastq-dump     #Set the job name to "JobExample3"
#SBATCH --time=12:00:00            #Set the wall clock limit to 1 Day and 12hr
#SBATCH --nodes=1                   #Request 8 tasks
#SBATCH --ntasks-per-node=8          #Request 2 tasks/cores per node
#SBATCH --mem=12G                #Request 4096MB (4GB) per node 
#SBATCH --output=fastq-dump_out.%j      #Send stdout/err to "Example3Out.[jobID]"
pwd; hostname; date


# enable proxy to allow compute node connection to internet
module load WebProxy

cd $2

prefetch $1;
fastq-dump --gzip --split-3 $1; 
