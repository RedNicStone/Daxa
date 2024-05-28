
SET(IMGUI_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/imgui")

add_library(imgui_internal STATIC)

target_sources(imgui_internal PRIVATE
        "${IMGUI_SOURCE_DIR}/imgui.cpp"

        "${IMGUI_SOURCE_DIR}/imgui_demo.cpp"
        "${IMGUI_SOURCE_DIR}/imgui_draw.cpp"
        "${IMGUI_SOURCE_DIR}/imgui_widgets.cpp"
        "${IMGUI_SOURCE_DIR}/imgui_tables.cpp"

        "${IMGUI_SOURCE_DIR}/backends/imgui_impl_vulkan.cpp"
        "${IMGUI_SOURCE_DIR}/backends/imgui_impl_glfw.cpp"

        "${IMGUI_SOURCE_DIR}/misc/cpp/imgui_stdlib.cpp")

target_include_directories(imgui_internal
        PUBLIC ${IMGUI_SOURCE_DIR}
        PUBLIC ${IMGUI_SOURCE_DIR}/backends
        PUBLIC ${IMGUI_SOURCE_DIR}/misc/cpp)

set_target_properties(imgui_internal PROPERTIES LINKER_LANGUAGE CXX)
