pragma solidity >=0.7.0 < 0.9.0;

// IF statement --> The if statement can be used for conditionally executing code. 
// No “else” block can be defined.

contract learnConditionals {
    uint num = 10;
    
    function ValidateNum() public view returns(bool){
    if(num == 10) {
        return true;
    }
    else{
        return false;
    }
    }
}