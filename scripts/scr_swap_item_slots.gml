///scr_swap_item_slots(old index, new index)
oldIndex = argument[0];
newIndex = argument[1];

oldSlot = obj_player.invent[oldIndex];
newSlot = obj_player.invent[newIndex];
obj_player.invent[oldIndex] = newSlot;
obj_player.invent[newIndex] = oldSlot;

//If there is an inventoryController set drawUI to true to redraw the ui
if(instance_exists(obj_inventoryController)){
    obj_inventoryController.drawUI = true;
    obj_inventoryController.done = false;
}
