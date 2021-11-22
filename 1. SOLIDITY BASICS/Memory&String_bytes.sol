pragma solidity >=0.7.0 < 0.9.0;


// The Ethereum Virtual Machine has three areas where it can store data--> 

/*
1. storage, 
Each account has a data area called storage, which is persistent between function calls and transactions.

// 2. memory 
The second data area is called memory, (data is wiped after execution stops)
of which a contract obtains a freshly cleared instance for each message call.

// 3. stack  all computations are performed on a data area called the stack. 


*/


contract Storage{
    
    // watch out for weird chars 
    //  \n skips line work in solidity
    
    
    string greetings = "Hello World";
    
    function sayHello() public view returns(string memory){
        return greetings;
    }
    //memory where string is stored is wiped out for the next execution
    
    
    function changeGreeting() public returns(string memory){
        greetings = "hand wave!";
        return greetings;
    }
    // getting length of a string is expensive computationally so u can't do it like in other languages
    function getChar() public view returns(uint){
        // return greetings.length;
        // this throws an error
        
        
        // !!!! CONVERT STRINGS TO BYTES and get length  !!!!
        return bytes(greetings).length;
        
    }
}

// !!! IMPORTANT bytes and string are encoded identically. In general, the encoding is similar to bytes1[]

