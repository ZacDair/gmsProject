///scr_add_item_to_inventory(itemID, amount, sprite index)
objItemID = argument[0];
objAmount= argument[1];
spriteIndex = argument[2];
foundObj = false;
foundEmpty = false;

//Cycle through the inventory array
for(i=0; i<array_length_1d(obj_player.invent); i+=1){

    //check if the first index of the slot is 0
    slot = obj_player.invent[i]
    if(slot[0] == "empty" and !foundEmpty){
        emptyIndex = i;
        foundEmpty = true;
    }
    //if its not empty check if it already contains this item's itemID
    else if(slot[0] == objItemID){
        objIndex = i;
        foundObj = true;
    }
}

//if we have found an occurence of the item add 1 to the amount part of the slot
if(foundObj){
    objSlot = obj_player.invent[objIndex]
    objSlot[1] += objAmount;
    obj_player.invent[objIndex] = objSlot;
}

//if there was no occurence of the item use the first empty slot, add the itemID and 1 for the amount
else{
    emptySlot = obj_player.invent[emptyIndex];
    emptySlot[0] = objItemID;
    emptySlot[1] = objAmount;
    emptySlot[2] = sprite_get_name(spriteIndex);
    obj_player.invent[emptyIndex] = emptySlot;
}

//If there is an inventoryController set drawUI to true to redraw the ui
if(instance_exists(obj_inventoryController)){
    obj_inventoryController.drawUI = true;
    obj_inventoryController.done = false;
}
