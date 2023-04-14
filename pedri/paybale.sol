// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract test{
    uint a;
    
    
    function pay() public payable{

    }
    function getbalance() public view returns(uint){
          return address(this).balance;
    }
    function payEther() public payable{
        payable(msg.sender).transfer(1 ether);
    }
}
