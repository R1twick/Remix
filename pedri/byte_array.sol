// SPDX-License-Identifier: GPL-3.0

pragma solidity  >= 0.5.0 < 0.9.0;

contract messi
{
 /*bytes3 public b3;
 bytes5 public b5;

 function setter() public
{
     b3='abc';
     b5='abcgf';

}*/

bytes public b1="123abc";

function pushElement() public
{
    b1.push('d');
}
function popElement() public
{
b1.pop();
}
function getElement(uint i) public view returns(bytes1)
 {
       return b1[i];
 }
 function length() public view returns(uint)
 {
   return  b1.length;
 }
}