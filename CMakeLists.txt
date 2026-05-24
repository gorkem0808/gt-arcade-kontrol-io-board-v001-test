cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(gt_arcade_kontrol_io_board_v001 C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

set(TINYUSB_ROOT "${PICO_SDK_PATH}/lib/tinyusb")

message("PICO_SDK_PATH = ${PICO_SDK_PATH}")
message("TINYUSB_ROOT  = ${TINYUSB_ROOT}")

include_directories(
    ${CMAKE_CURRENT_LIST_DIR}/src
    ${TINYUSB_ROOT}/src
    ${TINYUSB_ROOT}/hw
    ${TINYUSB_ROOT}/hw/bsp
)

add_executable(gt_arcade_kontrol_io_p1_v001
    src/main.c
    src/usb_descriptors.c
)

target_compile_definitions(gt_arcade_kontrol_io_p1_v001 PRIVATE
    PLAYER_ID=1
)

target_link_libraries(gt_arcade_kontrol_io_p1_v001
    pico_stdlib
    hardware_adc
    hardware_flash
    tinyusb_device
    tinyusb_board
)

pico_enable_stdio_usb(gt_arcade_kontrol_io_p1_v001 0)
pico_enable_stdio_uart(gt_arcade_kontrol_io_p1_v001 0)
pico_add_extra_outputs(gt_arcade_kontrol_io_p1_v001)


add_executable(gt_arcade_kontrol_io_p2_v001
    src/main.c
    src/usb_descriptors.c
)

target_compile_definitions(gt_arcade_kontrol_io_p2_v001 PRIVATE
    PLAYER_ID=2
)

target_link_libraries(gt_arcade_kontrol_io_p2_v001
    pico_stdlib
    hardware_adc
    hardware_flash
    tinyusb_device
    tinyusb_board
)

pico_enable_stdio_usb(gt_arcade_kontrol_io_p2_v001 0)
pico_enable_stdio_uart(gt_arcade_kontrol_io_p2_v001 0)
pico_add_extra_outputs(gt_arcade_kontrol_io_p2_v001)
