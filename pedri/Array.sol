// SPDX-License-Identifier: GPL-3.0

pragma solidity  >= 0.5.0 < 0.9.0;

contract Array{
 /*uint[] public arr;

 function pushElement(uint item) public 
 {
     return arr.push(item);
 }
function length() public view returns(uint)
 {
       return arr.length;
 }
 function popElement() public 
 {
     arr.pop();
 }*/

    uint[] public arr=[1,4,6,7,8];

    function some()public {
        arr[2]=45;
        delete arr[3];
    }
  
}