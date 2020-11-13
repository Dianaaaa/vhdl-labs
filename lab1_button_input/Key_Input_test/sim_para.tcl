lappend auto_path "C:/lscc/diamond/3.11_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {Key_Input_test}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/10352/vhdl-labs/lab1_button_input}
set ::bali::simulation::Para(FILELIST) {"C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/segment_led_decoder.vhd" "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/key_pressing_detector.vhd" "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/key_input.vhd" "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/Key_Input_tb.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {testbench}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
