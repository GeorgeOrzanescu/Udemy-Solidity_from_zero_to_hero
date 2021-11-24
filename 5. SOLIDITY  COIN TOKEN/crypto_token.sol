pragma solidity >=0.7.0 < 0.9.0;


// The contract allows only its creator to generate new coins
// Anyone can send coins to each other without the need for registering usernames/password


contract Coin {

    address public minter;  // hold's the creator of the contract
    mapping(address => uint) public balances; // keep track of holders and there balance of coins

    // create an event with the event keyword
    /* 
        Event is a inheritable member of a contract. An event is emitted, it stores the arguments passed
        in trasaction logs. The logs are stored on the blockchain and are accesible using address of the contract
    */
    event Sent(address from, address to, uint amount);


    // constructor runs only on deployment of contract
    constructor() { minter = msg.sender; }
    // make new coins and send them to an address
    // only the owner can send coins
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }
    // create an error with the error keyword
    error insufficientBalance(uint requested,uint available);


    // send amount of coins to existing address
    function send(address receiver, uint amount) public {
    // using if and revert keyword
        if(amount > balances[msg.sender]) revert insufficientBalance({
            requested : amount,
            available : balances[msg.sender]
        });

        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        
        // emit the event created earlier 
        emit Sent(msg.sender,receiver,amount);
    }
    
}