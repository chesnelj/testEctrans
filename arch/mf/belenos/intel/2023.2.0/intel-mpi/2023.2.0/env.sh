# Source me to get the correct configure/build/run environment

# Store tracing and disable (module is *way* too verbose)
{ tracing_=${-//[^x]/}; set +x; } 2>/dev/null

# Unload all modules to be certain
[[ ${IFS_RUNTIME_ENV:-unset} == "unset" ]] && module purge

# Load modules

module load cmake/3.24.1 1> /dev/null
module load intel/oneapi/2023.2 1> /dev/null
module load compiler/2023.2.0 1> /dev/null
module load mkl/2023.2.0 1> /dev/null
module load mpi/2021.10.0 1> /dev/null
module load gcc/9.2.0 1> /dev/null
module load python/3.10.12 1> /dev/null
module load perl/5.40.1 1> /dev/null

export FC=ifort
export F90=ifort
export CC=icc
export CXX=icpc
export OMPI_FC=ifort
export OMPI_F90=ifort
export OMPI_CC=icc
export OMPI_CXX=icpc
export I_MPI_FC=ifort
export I_MPI_F90=ifort
export I_MPI_CC=icc
export I_MPI_CXX=icpc

if [[ ! -v FP_PRECISION ]]; then 
  export FP_PRECISION=double
fi
export CXXFLAGS=-diag-disable=10441

export NETCDF4_DIR=/home/gmap/mrpm/khatib/opt/i-2018.5.274/netcdf-4.7.1
export NETCDF4_LIB=$NETCDF4_DIR/lib
export NETCDF4_INCLUDE=$NETCDF4_DIR/include
if [ -z $PKG_CONFIG_PATH ];then
	export PKG_CONFIG_PATH=$NETCDF4_DIR/lib/pkgconfig
else
	export PKG_CONFIG_PATH=$NETCDF4_DIR/lib/pkgconfig:$PKG_CONFIG_PATH
fi

# Setting required for bit reproducibility with Intel MKL:
export MKL_CBWR=AUTO,STRICT

# Record the RPATH in the executable
export LD_RUN_PATH=$LD_LIBRARY_PATH

# Restore tracing to stored setting
{ if [[ -n "$tracing_" ]]; then set -x; else set +x; fi } 2>/dev/null

