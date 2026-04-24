    This repository has purpose to store files of quartus project related to PDI_BUCHAS.
    
    Based on quartus 24.1 lite and questa starter edition, project team can compile project,
    upload output file into FPGA or CPLD chip and simulate circuit both functional and timing mode.
    
    These files serve to develop and analyse isolated modules and not to final project.
    FPGA chips used were MAX V family:5M1270ZT144C5, MAX 10 family: 10M08SCE144C8G and cyclone IV: EP4CE6E22C8. However any other application is not restricted to them.
    
    Note: jtag driver is not compatible with windows 11, so linux ubuntu was used to.
    
    Note: if wish to change FPGA chip, do it in device and recompile whole project.
    
    Note: to simulate use Waveform.vwf inside quartus only for MAX V and cyclone IV whose 
    source files of library are available in altera_lite folder, but for MAX 10, 
    firstly copy simulation/qsim/CASE_MAX10 into TESTE_PRODUTO.do and after use commands 
    listed in TESTE_PRODUTO/passos_questa_MAX10_TIMING, since only questa tool works correctely
    for MAX 10 in order to generate timing waveforms. 

