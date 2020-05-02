///scr_run_command(command)
command = argument[0];
if(command != ""){
    commandList = scr_split_command(command);
    show_debug_message("Command Passed: " + commandList[0]);
    show_debug_message("Arguments Passed (each argument is on a new line):")
    for(i=1; i<array_length_1d(commandList); i+=1){
        show_debug_message(commandList[i]);
    }
    show_debug_message("Command Processing Done");
}
else{
    show_debug_message("no command entered");
}
