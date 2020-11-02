lappend auto_path "C:/lscc/diamond/3.11_x64/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) Key_Input
set ::bali::Para(PROJECT) buttonInput
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.11_x64/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.11_x64/cae_library/synthesis/vhdl/machxo2.vhd"}
set ::bali::Para(FILELIST) {"C:/Users/10352/vhdl-labs/lab1_button_input/key_input.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
