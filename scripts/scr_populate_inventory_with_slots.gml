///scr_populate_inventory_with_slots(inventoryArray, slotArray)
//Get Arguments
inventoryArray = argument[0];
slotArray = argument[1];

//Cycle through the inventory array adding slotArrays at each index
for(i = 0; i < array_length_1d(inventoryArray); i+=1;){
    inventoryArray[i] = slotArray;
}
return inventoryArray;
