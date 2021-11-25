pragma solidity >= 0.7.0 < 0.9.0;

/*
    INTERFACES are similar to abstract contracts and are created using interface keyword
        - can NOT have any function implementation
        - functions of the interface can only be EXTERNAL
        - can NOT have constructor
        - CAN NOT have variables
        - CAN HAVE structs, enums which can be accessed


        The goal of the interface is to connect contracts

*/

contract Counter {
    uint public count;

    function increment()  external {
        count += 1;
    }
}

// interface will link the 2 contracts

interface Icounter {
        function increment() external;
        function count() external view returns(uint);
    }


contract MyContract {
    // the address must be that of the contract with who u want to connect
    function incrementCounter(address _counter) external {
        Icounter(_counter).increment();
    }

    function getCount(address _counter) external view returns(uint) {
        return Icounter(_counter).count();
    }
}