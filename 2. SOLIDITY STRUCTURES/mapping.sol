pragma solidity >=0.7.0 < 0.9.0;



// Mapping types use the syntax mapping(_KeyType => _ValueType) and 
// variables of mapping type are declared using the syntax mapping(_KeyType => _ValueType) _VariableName.

// key - value  !! key can be string uint or bool  --> values can be anything

// !!! U CANT LOOP THROW A MAP


contract learnMapping{
    
    mapping(address => uint) public myMap;
    
    // function to set an adress 
    
    function setAdress(address _addr, uint value) public {
        myMap[_addr] = value;   // u assign the value to the key like this
    }
    
    function getAdresss(address _addr) public view returns(uint){
        return myMap[_addr];
    }
    
    function removeAdress(address _addr) public {
        delete myMap[_addr];
    }
    
    
    
    mapping(address => mapping(address => uint)) public Wallets;
    
    function addWallet(address _addr,uint funds) public {
         Wallets[msg.sender][_addr] = funds;
         // msg.sender the adress of the contract caller
         // -addr like the second key   and funds as value
    }
}

// !! IMPORTANT even if the address its not in the mapping when u search for that adress 
// solidity will return 0 not throw an error


// NESTED MAPPING 

// mapping(key => mapping(key2 => value2)) nestedMap
/*
Example: allow one address to spend on behalf of another address (ECR20 tokens)

*/