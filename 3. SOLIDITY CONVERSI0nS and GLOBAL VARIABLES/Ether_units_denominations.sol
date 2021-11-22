pragma solidity >=0.7.0 < 0.9.0;


contract learnEtherUnits{
    
    
    // wei is the smallest denomination of ether
    
    function test() public {
        
        assert(1000000000000000000 wei == 1 ether);  // 10^18 wei = 1 ether
        assert( 1 wei == 1); // 1 wei = 18
        
        assert (1 ether == 1e18);
        
        
        assert(0.1 ether == 100000000000000000 );
    }
    
    
    function exercise() public {
        assert(60 seconds == 1 minutes);
        assert(24 hours == 1 days);
        assert(3600 seconds == 1 hours);
        
    }
}