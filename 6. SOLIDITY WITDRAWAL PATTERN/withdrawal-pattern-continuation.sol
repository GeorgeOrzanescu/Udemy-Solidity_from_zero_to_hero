pragma solidity >=0.7.0 < 0.9.0;

// HOW DOES A CONTRACT FIND OUT IF ANOTHER ADDRESS IS A CONTRACT

contract Victim {
    function isContract() public view returns(bool){
        // if there are bytes of code greater then  > then it is a contract( naive approach)
        uint32 size;
        address a = msg.sender;
        // inline assembly accesses EVM Ethereum Virtual Machine at a low level 
        assembly {
            size := extcodesize(a)
        }

        return (size > 0);

    }
}


contract Attacker {
    bool public trickedYou;
    Victim victim;

    constructor( address _victim) public {
        victim = Victim(_victim);
        trickedYou = !victim.isContract();
        }
}

// well if you call the address from the constructor ther are no byte codes  

// What do we do?? THE WITHDRAWAL PATTERN 