add_subdirectory(lidar_node)

# 安装 lidar_node 可执行文件
install(TARGETS lidar_node
  EXPORT sim_projTargets    # ⬅️ 告诉它导出进哪个集合
  RUNTIME DESTINATION bin
)

include(CMakePackageConfigHelpers)


# 安装并导出目标
install(EXPORT sim_projTargets
    FILE sim_projTargets.cmake
    NAMESPACE sim_proj::
    DESTINATION lib/cmake/sim_proj
)

# 生成并安装 Config 文件
configure_package_config_file(
    sim_projConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/sim_projConfig.cmake
    INSTALL_DESTINATION lib/cmake/sim_proj
)

install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/sim_projConfig.cmake
    DESTINATION lib/cmake/sim_proj
)