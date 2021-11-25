pragma solidity >= 0.7.0 < 0.9.0;
/*
Events in Solidity act like the logging functionality that you’re used to with other languages, 
except that instead of logging to the console or to a file, 
the logs are saved in the Ethereum blockchain. 

1. The definition of the event contains the name of the event and the parameters you want to save when you trigger the event.
2. Once you have declared your event, you can emit an event from within a function!
*/

contract learnEvents {
    // create new Event with 4 parameters
    event newTrade(uint date,address from, address to,uint amount);

    // EMIT an Event
    function trade(address to, uint amount) external  {
        // outside consumer can see the event through web3js
        emit newTrade(block.timestamp,msg.sender,to,amount);
    }
}