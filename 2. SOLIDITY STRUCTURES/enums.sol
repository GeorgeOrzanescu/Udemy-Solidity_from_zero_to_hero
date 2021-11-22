pragma solidity >=0.7.0 < 0.9.0;

// Enums are one way to create a user-defined type in Solidity.
// The data representation is the same as for enums in C:
// The options are represented by subsequent unsigned integer values starting from 0.


contract LearnEnums {
    enum frenchFriesSize {LARGE, MEDIUM, SMALL}
    
    // frenchFriesSize is a type now
    frenchFriesSize public choice;  // this is 0 if not change otherwise
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;
    
    
    function setSize() public {
        choice = frenchFriesSize.SMALL;
    }
    
    function getChoice() public view returns(frenchFriesSize){
        return choice;
    }
    
    function getDefaultChoice() public view returns (frenchFriesSize){
        return defaultChoice;
    }
    
    
    enum shirtColor {RED,BLUE,WHITE}
    shirtColor public choiceColor;
    shirtColor constant defaultChoiceColor = shirtColor.BLUE;
    
    function setWhite() public {
        choiceColor = shirtColor.WHITE;
    }
    
    function getDefaultChoiceColor() public view returns(shirtColor){
        return defaultChoiceColor;
    }
}