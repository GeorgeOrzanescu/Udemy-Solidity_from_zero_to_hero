pragma solidity >=0.7.0 < 0.9.0;


// function modifiers are used to modify the behaviour of a function .


contract Owner {
    // function modifiers
    
    address owner;
    // when u deploy this contract the address will be that of the msg.sender;
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        // custom logic to modify the function 
        require(owner == msg.sender,"Not the owner of this contract!");
        _;
        // the underscore continues with the function execution
    }
    
    modifier costs(uint price) {
        require(msg.value >= price,"Value is not high enough!");
        _;
    }
}

// is keyword is used to inherit from another contract
contract Register is Owner {
    mapping(address => bool) registeredAddress;
    uint price;
    
    constructor(uint initialPrice) public {price = initialPrice;}
    
    function register() public payable costs(price){
        registeredAddress[msg.sender] = true;
    } 
    // onlyOwner is our function modifier it require only the owner 
    // of the contract to change the price
    function changePrice(uint _price) public  onlyOwner {
        price = _price;
    }
}


