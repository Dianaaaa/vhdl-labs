setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/Key_Input_test.adf"]} { 
	design create Key_Input_test "C:/Users/10352/vhdl-labs/lab1_button_input"
  set newDesign 1
}
design open "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test"
cd "C:/Users/10352/vhdl-labs/lab1_button_input"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/segment_led_decoder.vhd"
addfile "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/key_pressing_detector.vhd"
addfile "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/key_input.vhd"
addfile "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/Key_Input_tb.vhd"
vlib "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/segment_led_decoder.vhd"
vcom -dbg -work work "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/key_pressing_detector.vhd"
vcom -dbg -work work "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/key_input.vhd"
vcom -dbg -work work "C:/Users/10352/vhdl-labs/lab1_button_input/Key_Input_test/Key_Input_tb.vhd"
entity testbench
vsim  +access +r testbench   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
