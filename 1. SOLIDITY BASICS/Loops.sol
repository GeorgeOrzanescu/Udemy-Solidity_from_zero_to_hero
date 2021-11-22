pragma solidity >=0.7.0 < 0.9.0;


contract learnLoops{
    // list of nums
    uint[] public numbersList = [4,2,3,4,5,6,7,8,9,10];
    
    
    function checkMultiples() public view returns(uint){
        uint count = 0;
        // for loop is a 3 part statement
        // 1. initialize start of loop  
        // 2. determine the lenght of the runtime and check it to i
        // 3. increment i
        
        for (uint i=0; i < numbersList.length ;i++){
            if((numbersList[i] % 2) == 0){
                count++;
            }
        }
        return count;
    }
    // ASSIGNMENT
    
    
    uint[] longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    
    uint[] numbersList2 = [1,4,34,56];
    
    
    function test( ) public view returns(uint){
        uint evenNums = 0;
        
        for(uint l=0; l < longList.length ; l++){
            if ( longList[l] % 2 == 0){
                evenNums++;
            }
        }
        return evenNums;
        
    }
}