 
        // SPDX-License-Identifier: MIT
        pragma solidity ^0.8.10;
        
        contract Sample  {
        uint public a = 0;
modifier add_value {
  a = a + 88;
    _;
}
function test() public add_value() {
   
}
        }
        /*contract A{
                uint public  a;
                constructor(uint _a) {
                  a=_a;
                }
                }
                contract B is A(1){
                  constructor() {
                          
                  }
                }*/
        