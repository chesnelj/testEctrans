cmake_minimum_required( VERSION 3.12 FATAL_ERROR )

project( ectrans_demonstrator LANGUAGES Fortran )

find_package( fiat REQUIRED )
find_package( ectrans REQUIRED )

add_executable( ectrans_demonstrator_cpu ectrans_demonstrator.F90 )

target_include_directories( ectrans_demonstrator_cpu
	PRIVATE ${ectrans_ROOT}/src/trans/include/ectrans )
target_include_directories( ectrans_demonstrator_cpu PRIVATE ${fiat_ROOT}/module/parkind_sp )
target_link_libraries( ectrans_demonstrator_cpu PRIVATE trans_sp )
target_link_libraries( ectrans_demonstrator_cpu PRIVATE ectrans_sp )

if(ectrans_HAVE_GPU)

  add_executable( ectrans_demonstrator_gpu ectrans_demonstrator.F90 )

  target_include_directories( ectrans_demonstrator_gpu
	PRIVATE ${ectrans_ROOT}/src/trans/include/ectrans )
  target_include_directories( ectrans_demonstrator_gpu PRIVATE ${fiat_ROOT}/module/parkind_sp )
  target_link_libraries( ectrans_demonstrator_gpu PRIVATE trans_gpu_sp )
  target_link_libraries( ectrans_demonstrator_gpu PRIVATE ectrans_gpu_sp )

endif()



