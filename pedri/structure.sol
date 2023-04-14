// SPDX-License-Identifier: GPL-3.O
pragma solidity >=0.5.0 < 0.9.0;
contract test {
struct Student 
 {
uint roll;
string name;
 }
Student public s1;

constructor(){
 s1.roll=34;
 s1.name="ritwick";
}
function Changestructure() public{
     s1.roll=56;
     s1.name="messi";
 }

 }