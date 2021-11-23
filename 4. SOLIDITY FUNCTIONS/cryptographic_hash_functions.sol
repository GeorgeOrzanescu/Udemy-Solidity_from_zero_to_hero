pragma solidity >=0.7.0 < 0.9.0;

/* 
cryptographic hash function (CHF) is a mathematical algorithm that maps data of arbitrary size 
(often called the "message") to a bit array of a fixed size (the "hash value", "hash", or "message digest"). 
It is a one-way function, that is, a function which is practically infeasible to invert or reverse the computation.

Solidity provides inbuilt cryptographic functions as well. Following are important methods:

keccak256(bytes memory) returns (bytes32) − computes the Keccak-256 hash of the input.

sha256(bytes memory) returns (bytes32) − computes the SHA-256 hash of the input.

ripemd160(bytes memory) returns (bytes20) − compute RIPEMD-160 hash of the input.

Keccak is a leading hashing function, designed by non-NSA designers. Keccak won NIST competition to become the official SHA3
Keccak is a family of cryptographic sponge functions and is designed as an alternative to SHA-256


*/

contract GenerateRandomNUmber{

    Oracle oracle;

    constructor(address oracleAddress) {oracle = Oracle(oracleAddress);}

    function randMod(uint range) external view returns(uint) {
        return 
        uint(keccak256(abi.encodePacked  /// keccak256(bytes memory) returns (bytes32): compute the Keccak-256 hash of the input
        (block.timestamp,block.difficulty,msg.sender,oracle.rand))) % range;

        // this will generate only numbers < range  
    }
} 

contract Oracle {
    address admin;
    uint public rand;

    modifier onlyAdmin() {
        require(admin == msg.sender,"You are not the admin of this contract!");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function setRand(uint num) public onlyAdmin{
        rand = num;
    }
}