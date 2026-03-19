source /home/afar/modules/use.sh
module load rocm
module load afar/22.3.0
module load cmake/3.31.7
module load openmpi

export FC=flang
export F90=flang
export CC=clang
export CXX=clang++
export OMPI_FC=flang
export OMPI_F90=flang
export OMPI_CC=clang
export OMPI_CXX=clang++
export I_MPI_FC=flang
export I_MPI_F90=flang
export I_MPI_CC=clang
export I_MPI_CXX=clang++

