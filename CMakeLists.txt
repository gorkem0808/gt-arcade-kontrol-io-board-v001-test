cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(gt_arcade_kontrol_io_board_v001 C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

function(add_gt_arcade_target TARGET PLAYER PID PRODUCT_NAME)
  add_executable(${TARGET}
    src/main.c
    src/usb_descriptors.c
  )
  target_compile_definitions(${TARGET} PRIVATE
    PLAYER_ID=${PLAYER}
    USB_PID=${PID}
    USB_PRODUCT="${PRODUCT_NAME}"
  )
  target_include_directories(${TARGET} PRIVATE src)
  target_link_libraries(${TARGET}
    pico_stdlib
    hardware_adc
    tinyusb_device
    tinyusb_board
  )
  pico_add_extra_outputs(${TARGET})
endfunction()

add_gt_arcade_target(gt_arcade_kontrol_io_p1_v001 1 0x4021 "GT Arcade Kontrol IO P1 V001")
add_gt_arcade_target(gt_arcade_kontrol_io_p2_v001 2 0x4022 "GT Arcade Kontrol IO P2 V001")
