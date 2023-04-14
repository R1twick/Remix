// SPDX-License-Identifier: GPL-3.0

pragma solidity  >= 0.5.0 < 0.9.0;

contract array 
{
    uint[5] public arr= [10,68,98,76,56];
    uint[] public Arr;

    function push(uint _value) public{
     return Arr.push(_value);
    }
    function call()public{
        arr[2]=76;
        delete arr[3];
    }
    function len() public view returns(uint){
         return arr.length;
          return Arr.length;

    }
}