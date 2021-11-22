pragma solidity >=0.7.0 < 0.9.0;

/*
Constructor is a special function using constructor keyword -> it initializes state variables of a contract

IMPORTANT:
1. A contract can have only 1 constructor
2. A constructor is executed when a contract is created

A constructor can be either Public or internal

A internal constructor defines the contract as abstract
Also a default constructor exists.

*/



contract LearnStructures{
    
    string public name;
    uint public age;
    
    constructor(string memory _name,uint _age) public {
        name = _name;
        age = _age;
    }
}

// child inherits from LearnStructures contract
// and calls the constructor from the parent contract


contract Child is LearnStructures // ('TOM',28) // shorthand syntax
{
    // create new constructor but which uses parent constructor
    constructor(string memory n ,uint a) LearnStructures(n,a) public {}
    
    function getName() public view returns(string memory){
        return name;
    }
}

contract Base{
    uint data;
    
    constructor(uint _data){
        data = _data;
    }
    
    function getData() public view returns(uint){
        return data;
    }
}



contract Derived is Base(5) {
    // here we can call the function getData from Base because we inherit it
    
}