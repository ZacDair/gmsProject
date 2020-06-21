///scr_swap_item_slots(old index, new index, list 1, list 2)
oldIndex = argument[0];
newIndex = argument[1];
list1 = argument[2];

//Check to see if two lists were sent as arguments
if(argument_count == 4){
    list2 = argument[3]
}
else{
    list2 = list1;
}

oldSlot = list1[oldIndex];
newSlot = list2[newIndex];

//Use accessors to change the switch the slots
list1[@ oldIndex] = newSlot;
list2[@ newIndex] = oldSlot;

//If there is an inventoryController set drawUI to true to redraw the ui
if(instance_exists(obj_inventoryController)){
    obj_inventoryController.drawUI = true;
    obj_inventoryController.done = false;
}
