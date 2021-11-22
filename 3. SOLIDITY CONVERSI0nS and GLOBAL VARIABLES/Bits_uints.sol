pragma solidity >=0.7.0 < 0.9.0;


contract learnConversion {
    
    // uint data is an unsigned integer , meaning its value must be non-negative
    // int data is for signed integers
    
    // uint == uint256   also there are uint8, uint16
    
    // IDEA is to make smart contract that are cost effective
    
  /*  A uint256 is full 32 bytes long. The number ‘256’ represents the number of bits. The maximum no that can be stored in a uint256 is
2**256–1 (as numbers start from 0)
    uint8  is full 8 bytes  --> 2*8-1 = 255

*/
    
    // READ HEXADECIMAL CODE SO U UNDERSTAND BETTER
    
    // uint8 public a = 0x823; 
    // can't because hes code translates to (8 × 16²) + (2 × 16¹) + (3 × 16⁰) = (2083)₁₀
    
    uint16 public b = 0x823;
    uint8 public a = uint8(b);  // convert   = 23 in HEXADECIMAL
    
    uint128 public large = 3213232323232; // 2EC23923AA0  HEX
    uint32 public largeConversion = uint32(large);  //=596785824  ->23923AA0 HEX
    
    // !! We can see that the hex code get's truncated at the right 
    
    
    uint16 public medium = 32435;  // 7EB3 HEX
    uint32 public mediumConversion = uint32(medium); // 00007EB3  HEX
    // When converting up it just adds bytes in front 
    
    
    // The value types bytes1, bytes2, bytes3, …, bytes32 hold a sequence of bytes from one to up to 32.
    
    // 1 byte = 8 bits  THIS VALUES ARE IN BYTES
    bytes2 public byte1 = 0x1123;  
    bytes4 public byte2 = 0x12341234;
    
}



/* IMPORTANT

In Solidity, strings and bytes are stored in big endian (left to right),
0x657468657265756d000000000000000000000000000000000000000000000000 

and other types such as numbers and addresses, are stored as little endian (right to left).
0x000000000000000000000000000000000000000000000000657468657265756d
*/
