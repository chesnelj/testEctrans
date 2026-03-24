
# loading modules
AMDCOMPILERPATH=/perm/sor/install/rocm/rocm-afar-10004-drop-22.3.0/

export PATH=${AMDCOMPILERPATH}/openmpi-5.0.7/bin:${AMDCOMPILERPATH}/bin:$PATH
export BLA_PREFER_PKGCONFIG=ON
export PKG_CONFIG_PATH=${AMDCOMPILERPATH}/netlib/3.11/lib64/pkgconfig
export CMAKE_PREFIX_PATH=${AMDCOMPILERPATH}/netlib/3.11

#module load hpcx-openmpi/2.9.0
module load fftw


# export compilers allowing cmake to identify them
export FC=${AMDCOMPILERPATH}/bin/amdflang
export F90=${AMDCOMPILERPATH}/bin/amdflang
export CC=${AMDCOMPILERPATH}/bin/amdclang
export CXX=${AMDCOMPILERPATH}/bin/amdclang++
export OMPI_FC=${AMDCOMPILERPATH}/bin/amdflang
export OMPI_F90=${AMDCOMPILERPATH}/bin/amdflang
export OMPI_CC=${AMDCOMPILERPATH}/bin/amdclang
export OMPI_CXX=${AMDCOMPILERPATH}/bin/amdclang++
export I_MPI_FC=${AMDCOMPILERPATH}/bin/amdflang
export I_MPI_F90=${AMDCOMPILERPATH}/bin/amdflang
export I_MPI_CC=${AMDCOMPILERPATH}/bin/amdclang
export I_MPI_CXX=${AMDCOMPILERPATH}/bin/amdclang++

