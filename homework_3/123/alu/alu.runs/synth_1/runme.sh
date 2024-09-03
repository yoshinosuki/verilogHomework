#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=E:/WorkSpace/Vivado2021.1/Vivado/2021.1/ids_lite/ISE/bin/nt64;E:/WorkSpace/Vivado2021.1/Vivado/2021.1/ids_lite/ISE/lib/nt64:E:/WorkSpace/Vivado2021.1/Vivado/2021.1/bin
else
  PATH=E:/WorkSpace/Vivado2021.1/Vivado/2021.1/ids_lite/ISE/bin/nt64;E:/WorkSpace/Vivado2021.1/Vivado/2021.1/ids_lite/ISE/lib/nt64:E:/WorkSpace/Vivado2021.1/Vivado/2021.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='E:/Code/V/homework_3/123/alu/alu.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log tb_alu_8bit.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source tb_alu_8bit.tcl
