file(REMOVE_RECURSE
  "srv_gen"
  "srv_gen"
  "src/PtoP_traject/srv"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/rosbuild_premsgsrvgen.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
