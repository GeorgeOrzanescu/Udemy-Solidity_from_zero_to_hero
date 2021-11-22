pragma solidity >=0.7.0 < 0.9.0;

/*
1. public: visible externally and internally (creates a getter function for storage/state variables)

2. private: only visible in the current contract (u can only call the function inside the contract)

3. external: only visible externally (only for functions) - i.e. can only be message-called (via this.func)

4. internal: only visible internally
*/

contract learnSpecifiers {
    
    uint public num = 3;
    string private myName = "George"; // only vieweble inside the contract
    string internal LastName = "Orzanescu" // same only inside contract or other contract that inherits from this one
    
    function getNum() public payable returns(uint){ // can call from outside the contract
        num = 18;  // this will change the state of the contract so u cannot have View 
        return num;
    }
    
    function getNum2() private view  returns(uint){ // CANNOT call from outside the contract
        return num;
    }
    
    
    function externalFunc() external view returns(uint){
        return 2;   // CALLEBLE ONLY OUTSIDE OF THE CONTRACT
    }
    
    function callExternal() public  returns(uint){
        return externalFunc(); // U CANNOT CALLIT INSIDE THE CONTRACT
    }
}

// MODIFIERS

/*
1. pure for functions: Disallows modification or access of state.

2. view for functions: Disallows modification of state.

3. payable for functions: Allows them to receive Ether together with a call.

4. constant for state variables: Disallows assignment (except initialisation), does not occupy storage slot.
*/