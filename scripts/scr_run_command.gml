///scr_run_command(command)
command = argument[0];
if(command != ""){
    commandList = scr_split_command(command);
    switch(commandList[0]){
        //help
        case "help":
            show_debug_message("List of commands will be shown here");
            break;
            
        //Unknown Command
        default:
            show_debug_message("Command " + commandList[0] + ' is unrecognized. For a list of commands, see "help".');
            break; 
    }
}
else{
    show_debug_message("No command entered");
}
