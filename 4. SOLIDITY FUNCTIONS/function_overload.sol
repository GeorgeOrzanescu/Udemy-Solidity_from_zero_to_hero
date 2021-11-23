pragma solidity >=0.7.0 < 0.9.0;

// Function overload 
// multiple definitions for the same function name 

// !!! the definition of the function must differ from each other
// by the return type or typens and/or number of arguments

contract functionOverloading {
    
    function x(bool lightSwitch,uint wallet) public {
    }

    function x(uint wallet)  public {
    }
}


contract Assignment {
    function sumA(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function sumA(uint a,uint b,uint c) public pure returns(uint) {
    return a+b+c;
    }

    function getSumA() public view returns(uint){
    return  sumA(2,5);
    }

    function getSumA2() public view returns(uint){
    return  sumA(2,5,4);
    }
}