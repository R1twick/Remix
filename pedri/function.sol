// SPDX-License-Identifier: MIT
        pragma solidity ^0.8.10;
        
        contract Sample  {
        function public_func() public pure returns(uint){
                return 1;
        }
        function private_func() private pure returns(uint){
                return 2;
        }
        function internal_func() internal pure returns(uint){
                return 3;
        }
        function external_func() external pure returns(uint){
                return 4;
        }
        function check_private() public pure returns(uint){
            uint x=private_func();
            return x;
        }
         function check_internal() public pure returns(uint){
             uint x=internal_func();
             return x;
             }
        
        }