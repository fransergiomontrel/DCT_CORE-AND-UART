#!/bin/bash

# ===============================
# CYCLONE IV SIMULATION CLEAN RUN
# ===============================

PROJ_DIR=$(pwd)

SIM_DIR="$PROJ_DIR/simulation/questa"
LIB_DIR="$SIM_DIR/verilog_libs"
INISIM="$LIB_DIR/modelsim.ini"

VO_FILE="$SIM_DIR/TESTE_PRODUTO.vo"
TOP="execucao_produto_vlg_vec_tst"

# ===== SET QUARTUS / QUESTA =====
export QUARTUS_ROOTDIR=/home/montrel/altera/24.1std/quartus
export PATH=/home/montrel/altera/24.1std/questa_fse/bin:$PATH

# ===== CLEAN =====
rm -rf work transcript vsim.wlf

# ===== START SIM =====
vsim -c -modelsimini "$INISIM" << EOF

vlib work
vmap work work

# IMPORTANT: Cyclone IV library mapping (force correct one)
vmap cycloneive_ver "$LIB_DIR/cycloneive_ver"

# compile netlist
vlog "$VO_FILE"

# run testbench
vsim work.$TOP

run -all
quit -f

EOF
