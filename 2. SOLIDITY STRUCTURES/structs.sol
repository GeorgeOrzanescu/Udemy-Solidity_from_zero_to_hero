pragma solidity >=0.7.0 < 0.9.0;


// Solidity provides a way to define new types in the form of structs 
// usually used to store records



// !!! Struct types can be used inside mappings and arrays and they can themselves contain mappings and arrays.

contract learnStructs{
    
    struct Funder {
        address addr;
        uint amount;
        }
        
   Funder public funder1;         
   Funder public funder2;
    
    
    function setFunder() public {
        funder1 = Funder(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,2);
    }
    function copyFunder() public {
        funder2 = funder1;  // u can copy a struct to another struct
    }
    
    function getFundsFunder() public view returns(uint){
        return funder2.amount;
    }
}