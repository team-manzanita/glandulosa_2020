#!/bin/bash -l

#SBATCH --ntasks=128
#SBATCH --mem-per-cpu=8GB
#SBATCH --cpus-per-task=1
#SBATCH --time=7-00:00:00
#SBATCH -p intel

module load freebayes 
module load parallel
/opt/linux/centos/7.x/x86_64/pkgs/freebayes/1.2.0/scripts/freebayes-parallel <(/opt/linux/centos/7.x/x86_64/pkgs/freebayes/1.2.0/scripts/fasta_generate_regions.py A_gland_RAD_ref.fa 100000) 32 -f A_gland_RAD_ref.fa --ploidy 2 A_glandulosa_all_sorted.bam > A_glandulosa_2N.vcf

