pragma solidity >=0.7.0 < 0.9.0;


/*
Operators:

! (logical negation)

&& (logical conjunction, “and”)

|| (logical disjunction, “or”)

== (equality)

!= (inequality)



Comparisons: <=, <, ==, !=, >=, > (evaluate to bool)

Bit operators: &, |, ^ (bitwise exclusive or), ~ (bitwise negation)

Shift operators: << (left shift), >> (right shift)

Arithmetic operators: +, -, unary - (only for signed integers), *, /, % (modulo), ** (exponentiation)

*/

contract LearnOperators {
    
    function calculator(uint a,uint b) public view returns(uint){
        return a * b;
    }
    
    function getReminder() public view returns(uint){
        return 112 % 35;
    }
    
    /*
    The require() function either creates an error without any data or an error of type Error(string). 
    It should be used to ensure valid conditions that cannot be detected until execution time. 
    This includes conditions on inputs or return values from calls to external contracts.
    */
    
    function compare() view public {
        require( 3 < 6,"This is False"); // returns the error string only if check statement is false
    }
    
    function getTruth() view public returns(bool){
        if(3 > 2 && 5 >= 5){ return true;}
        else{return false;}
    }
    
    
    // ASSIGNMENT
    
    function returnModuloDivionbyZero() public view returns(uint){
        return 4 % 0;  // throws an error in the compiler
    }
}