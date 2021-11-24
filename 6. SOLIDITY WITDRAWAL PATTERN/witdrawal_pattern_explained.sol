pragma solidity >=0.7.0 < 0.9.0;

/*
            The Withdrawal Pattern

The recommended method of sending funds after an effect is using the withdrawal pattern. 
Although the most intuitive method of sending Ether, as a result of an effect, is a direct transfer call, this is not recommended as it introduces a potential security risk.
You may read more about this on the Security Considerations page.


The following is an example of the withdrawal pattern in practice in a contract where the goal is to send the most money to the contract in order to become the “richest”, inspired by King of the Ether.

In the following contract, if you are no longer the richest, you receive the funds of the person who is now the richest.


*/

contract WithdrawalContract {
    address public richest;
    uint public mostSent;
    mapping(address => uint) pendingWithdrawals;

    error NotEnoughEther();
    
    constructor () payable {
        richest = msg.sender;
        mostSent = msg.value;
    }

    function becomeRichest() public payable {
        if(msg.value <= mostSent) revert NotEnoughEther();

        pendingWithdrawals[richest] += msg.value;
        richest = msg.sender;
        mostSent = msg.value;
    }

    function withdraw() public {
        uint amount = pendingWithdrawals[msg.sender];
        pendingWithdrawals[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }

    function getTotalFunds() public view returns(uint){
        return pendingWithdrawals[msg.sender];
    }

}

// This is as opposed to the more intuitive sending pattern:


contract SendContract {
    address payable public richest;
    uint public mostSent;

    error NotEnoughEther();

    constructor() payable {
        richest = payable(msg.sender);
        mostSent = msg.value;
    }

    function becomeRichest() public payable {
        if (msg.value <= mostSent) revert NotEnoughEther();
        // This line can cause problems (explained below).
        richest.transfer(msg.value);
        richest = payable(msg.sender);
        mostSent = msg.value;
    }
}

/*
Notice that, in this example, an attacker could trap the contract into an unusable state by causing richest to be the address of a contract that has a receive or fallback function which fails 
(e.g. by using revert() or by just consuming more than the 2300 gas stipend transferred to them). That way, whenever transfer is called to deliver funds to the “poisoned” contract, 
it will fail and thus also becomeRichest will fail, with the contract being stuck forever.

In contrast, if you use the “withdraw” pattern from the first example, the attacker can only 
cause his or her own withdraw to fail and not the rest of the contract’s workings.

*/