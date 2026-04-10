#source /home/afar/modules/use.sh
#module load rocm
#module load afar/22.3.0
#module load cmake/3.31.7
#module load openmpi/afar-22.3.0/5.0.9
#module unload -f openmpi-rt/ucx
#module load openmpi-rt/sm

source /home/afar/modules/use.sh
module load rocm
module load afar/22.3.0
module load openmpi-rt/ucx
module load openmpi/afar-22.3.0/5.0.9

#export FC=flang
#export F90=flang
#export CC=clang
#export CXX=clang++
export FC=mpif90
export F90=mpif90
export CC=mpicc
export CXX=mpic++
export OMPI_FC=mpif90
export OMPI_F90=mpif90
export OMPI_CC=mpicc
export OMPI_CXX=mpic++
#export I_MPI_FC=flang
#export I_MPI_F90=flang
#export I_MPI_CC=clang
#export I_MPI_CXX=clang++

