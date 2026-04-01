cmake_minimum_required( VERSION 3.12 FATAL_ERROR )

project( ectrans_demonstrator LANGUAGES Fortran )

find_package( fiat REQUIRED )
find_package( ectrans REQUIRED )

add_executable( ectrans_demonstrator ectrans_demonstrator.F90 )

target_include_directories( ectrans_demonstrator 
	PRIVATE ${ectrans_ROOT}/src/trans/include/ectrans )
target_include_directories( ectrans_demonstrator PRIVATE ${fiat_ROOT}/module/parkind_sp )
target_link_libraries( ectrans_demonstrator PRIVATE trans_sp )

