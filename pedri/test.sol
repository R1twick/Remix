// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract Test
{
uint[6] public arr =[5,6,7,4,3,6];

function myarray() public returns (uint)
{
 arr[2]=45;
 return arr[3];
}

function setter(uint marks, uint index) public{
    arr[index]=marks;
}
function length() public view returns(uint)
{
    return arr.length;
}

}