pragma solidity >=0.7.0 < 0.9.0;
// view ensures that we will not modify the state (the return value)
// pure ensures that we do not read or modify the state 

contract MyContract{
    
    uint value;
    
    function setValue(uint _value) external {
        value = _value;
    }
    // view allow us to see the returned value
    function getValue() external view returns(uint){
        return value;
    }
    
    function readValue() public pure returns(uint){
        // return value + 3;  // this is not allowed we are reading value
        return 3 + 3; // THIS WORKS
        
    }
}