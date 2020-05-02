///scr_split_command(command)
//Expected argument is the string containing the command values etc ...
command = argument[0];

//Needle is a character to ignore seperating keywords from values ("setPlayerHealth 10") needle = " "
needle = " ";

//Array to store our results, index to place them in the array in the same order, res to store each word/part of the command
var resArray;
arrayIndex = 0;
res = "";

//Cycle through the command characters
commandLen = string_length(command);
for(i=1; i<= commandLen; i+=1;){
    currentLetter = string_char_at(command, i);
    //If the current letter isn't equal to the needle and we aren't at the end of the command
    if(currentLetter != needle and i != commandLen){
        
        //Check if res is empty, set if empty, appened if not
        if(res != ""){
            res = res + currentLetter;
        }
        else{
        
            //Res is set to the current letter
            res = currentLetter;
        }        
    }
    
    //If the current letter is equal to the needle, store the current result in our resArray
    else{
        res = res + currentLetter;
        resArray[arrayIndex] = res;
        arrayIndex += 1;
        res = "";
    }
}
return(resArray);
