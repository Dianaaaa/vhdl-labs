lappend auto_path "C:/lscc/diamond/3.11_x64/data/script"
package require tbtemplate_generation

set ::bali::Para(MODNAME) Key_Input
set ::bali::Para(PROJECT) buttonInput
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.11_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.11_x64/cae_library/synthesis/vhdl/machxo2.vhd"}
set ::bali::Para(TFT) {"C:/lscc/diamond/3.11_x64/data/templates/tstbch_f.tft"}
set ::bali::Para(OUTNAME) Key_Input_tb
set ::bali::Para(EXT) .vhd
set ::bali::Para(FILELIST) {"C:/Users/10352/vhdl-labs/lab1_button_input/key_input.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateTbTemplate
