pragma solidity >=0.7.0 < 0.9.0;


// global variables are available and provides information about the blockchain

// msg.sender = current caller of the contract
// msg.value = value in wei sent with message
// block.timestamp = current block timestamp


// here are all the global variables

// -->  https://docs.soliditylang.org/en/v0.8.9/cheatsheet.html#global-variables


contract Ledgerbalance{
    
    mapping(address => uint) balance;
    
    function updatebalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
    
    function getBalance() public view returns(uint){
        return balance[msg.sender];
    }
}

contract SimpleStorage{
    
    uint storedData;
    
    
    function set(uint x) public{
       //  storedData = x;
    //   storedData = block.difficulty;
    storedData = block.timestamp; 
    }
    
    function get() public view returns(uint) {
        return storedData;
    }
}