///scr_add_item_to_inventory(sprite index)
spriteIndex = argument[0];
//Cycle through the inventory array
for(i=0; i<array_length_1d(obj_player.invent); i+=1){

    //check if the first index of the slot is 0
    slot = obj_player.invent[i]
    if(slot[0] == "empty"){
        emptyIndex = i;
    }
    //if its not empty check if it already contains this item's itemID
    else if(slot[0] == itemID){
        objIndex = i;
        foundObj = true;
    }
}

//if we have found an occurence of the item add 1 to the amount part of the slot
if(foundObj){
    objSlot = obj_player.invent[objIndex]
    objSlot[1] += 1;
    obj_player.invent[objIndex] = objSlot;
}

//if there was no occurence of the item use the first empty slot, add the itemID and 1 for the amount
else{
    emptySlot = obj_player.invent[emptyIndex];
    emptySlot[0] = itemID;
    emptySlot[1] = 1;
    emptySlot[2] = sprite_get_name(spriteIndex);
    obj_player.invent[emptyIndex] = emptySlot;
}
