pragma solidity >=0.7.0 < 0.9.0;


// Functions are the executable units of code. Functions are usually defined inside a contract,
// but they can also be defined outside of contracts.

// TEMPLATE -->

// function <function-name>(argument list) scope returns(){
//    ...code
//}

contract learnFunctions{
    
    function remoteControlOpen(bool closedDoor) public returns(bool){
        return true;
    }
    
    function addValue() public view returns(uint){
        uint a= 2;
        uint b =3;
        return a+b;
    }
}