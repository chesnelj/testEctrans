#Required for auxlibs
if [[ ! -v FP_PRECISION ]]; then 
  export FP_PRECISION=double
fi
export ECBUILD_TOOLCHAIN="./toolchain.cmake"
