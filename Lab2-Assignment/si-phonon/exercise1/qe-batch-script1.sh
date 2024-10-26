#!/bin/sh
#This file is called submit-script.sh
#SBATCH --partition=pre        # default "shared", if not specified
#SBATCH --time=0-00:30:00       # run time in days-hh:mm:ss
#SBATCH --nodes=1               # require 1 nodes
#SBATCH --ntasks-per-node=2    # cpus per node (by default, "ntasks"="cpus")
#SBATCH --mem-per-cpu=4000             # RAM per node in megabytes
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out
# Make sure to change the above two lines to reflect your appropriate
# file locations for standard error and output


. /home/groups/mse_course_ping/programs/spack/share/spack/setup-env.sh
DATE=date
echo "Running batch script with ${SLURM_NTASKS} tasks at ${DATE}"

spack load quantum-espresso

srun --mpi=pmix -n ${SLURM_NTASKS} pw.x < si.scf.in > si.scf.out
srun --mpi=pmix -n ${SLURM_NTASKS} ph.x < si.phG.in > si.phG.out 
