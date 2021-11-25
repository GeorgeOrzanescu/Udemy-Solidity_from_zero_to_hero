pragma solidity >=0.7.0 < 0.9.0;

contract RestrictedAccess{
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;


    // write a modifier that will require that the current caller to be equal 
    // to an address specified
    modifier onlyBy(address _account) {
        require(msg.sender == _account,'Sender not authorized!');
        _;
    }


    // a function to change the owner address
    function changeOwnerAddress(address new_address) public onlyBy(owner){
        owner = new_address;
    }
}