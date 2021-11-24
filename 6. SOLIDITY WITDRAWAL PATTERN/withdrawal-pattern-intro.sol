pragma solidity >=0.7.0 < 0.9.0;

/*
Cybersecurity In Solidity - against bad actors, accidental occurances 

Withdrawal pattern ensures that direct transfer call is not made which poses a security threat. 
Transfers are atomic (meaning all or nothing!)

https://docs.soliditylang.org/en/v0.8.7/common-patterns.html   READ MORE
*/

/*  ASSIGNMENT
Write an iterating function called returnFunds that will refund through the transfer method investors to a var 
called funders back to their wallets called contributedAmount. Add a modifier to the signature
that only the owner can execute this function. The function should return a bool success. 
*/

/*
    modifier onlyOwner {
        require(msg.sender = owner);
        _;
    }
    function returnFunds() public onlyOwner returns(bool success) {
        for(uint i = 0; i < funders.length; i++) {
            funders[i].transfer(contributedAmount);
        }
        return true;
    }
*/

/* what do you think is the problem with the returnFunds function? 

1.What if the owner chickens out and does not return funds?
The owner is a single point of failure and this pattern 
suggests adherence to server-centric thinking — 
only a privileged user should be able to initiate a mass distribution of funds.

2. the loop is unbound! it could very well run out of gas before allocating all the funds back
an attacker could do is just make a bunch of small contributions .0000284289

*/


contract WithdrawalPattern {


}