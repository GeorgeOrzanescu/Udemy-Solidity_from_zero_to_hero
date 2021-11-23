pragma solidity >=0.7.0 < 0.9.0;

/*
FALLBACK FUNCTIONS

- cannot have name
- does not take inputs
- does not return outputs
- Must be declared external
*/


// event keyword to create an event


// emit keyword to like return a message after a transaction
// gasleft() returns the gas gasleft

contract FallBack{
    // fallback is a keyword when declaring it
    event log(uint gas);
    
    fallback () external payable{
        // when u use send or transfer: we get 2300 gas which is enough to emit a log
        // when u use call : we get all the gas more then 2300
         emit log(gasleft());
    }
    
    function getBalance() public view returns(uint){
    // return the stored balance of the contract
        return address(this).balance;
    }
    
   
}

// new contract to send eth to fallback

contract SendToFallBack {
    // transfer eth with transfer
    function transferToFallBack(address payable _to) public payable{
        // send eth with trasnfer method
        // automatically send gas with 
        _to.transfer(msg.value);
        
    }
    // send eth with call method
    function callFallback(address payable _to) public payable{
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent,'Failed to send!');
    }
    
    // transfer eth with call
}


// IMPORTANT when u transfer u transfer to the address of the contract deployed
// READ HERE more

// https://docs.soliditylang.org/en/v0.8.9/contracts.html?highlight=fallback#receive-ether-function













