pragma solidity >=0.7.0 < 0.9.0;


// Arrays can have a compile-time fixed size, or they can have a dynamic size.

// The type of an array of fixed size k and element type T is written as T[k], and an array of dynamic size as T[].


contract learnArrays {
    uint[] public array1;
    uint[] public array2;
    uint[200] public array3; // fixed array
    
    
    // push() method adds one or more elements to the end of an array and return the new length
    
    function pushToArray(uint numberToAdd) public {
        array1.push(numberToAdd);
    }
    
    // pop() removes the last element of an array and returns that value
    
    function removeLastFromArray() public {
        return array1.pop();
    }
    
    
    function getLength() public view returns(uint){
        return array1.length;
    }
    
    // delete just resets the value to 0 not actually removing it
    // !! the length of the array remain unchanged
    function removeFromArray(uint i) public {
        delete array1[i];
    }
    
    
    
    // ASIGNMENT  remove an item fron an array that actually changes the length of the array
    
    uint[] public changeArray;
    
    function removeElement(uint index) public  {
        // THIS IS THE INSTRUCTOR METHOD BUT IT HAS A FALLBACK  the way he does it mixes the initial
        // order of the nums in the array
        // set the index of element u want removed to the last value --> then pop last value
        changeArray[index] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }
    
    function pushNumbers() public {
        for(uint i=1;i<5;i++){
            changeArray.push(i);
        }
    }
    
    function getLengthofArray() public view returns(uint){
        return changeArray.length;
    }
    // MY APPROACH
    function actualRemove(uint index) public {
        delete changeArray[index];
        if(changeArray[changeArray.length-1]==0){
            changeArray.pop();
        }
        else{
        uint helper = 0;  // helps copying next element and keeping track of array index
        for (uint i=0 ; i < changeArray.length - helper; i++){
            if(changeArray[i] == 0) { // skip the 0 and copy next element 
                helper = 1;
                }
            changeArray[i] = changeArray[i+helper]; // when helper becomes 1 copy next element
            }
        changeArray.pop(); // delete last element which is a duplicate now
        }
    }
    
}