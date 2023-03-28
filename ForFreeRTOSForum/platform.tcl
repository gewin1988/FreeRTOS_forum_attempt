# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\forgoa\workspace2\ForFreeRTOSForum\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\forgoa\workspace2\ForFreeRTOSForum\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ForFreeRTOSForum}\
-hw {D:\Xilinx\Vitis\2022.2\data\embeddedsw\lib\fixed_hwplatforms\zed.xsa}\
-proc {ps7_cortexa9_0} -os {freertos10_xilinx} -out {C:/Users/forgoa/workspace2}

platform write
platform generate -domains 
platform active {ForFreeRTOSForum}
platform generate
bsp reload
domain active {zynq_fsbl}
bsp reload
