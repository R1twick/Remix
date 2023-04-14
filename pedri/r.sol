// SPDX-License-Identifier: GPL-3.0
        pragma solidity >=0.7.1 <0.9.0;
  
        contract MyContract {
          function sum(uint8 _a, uint8 _b) public pure returns(uint8 _sum){
            return (_a+_b);
          }
        }