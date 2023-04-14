// SPDX-License-Identifier: GPL-3.0

pragma solidity  >= 0.5.0 < 0.9.0;

contract user
{
    struct Student{
        uint age;
        string name;
    }
    mapping(uint=>Student) public student_info;

    /*function store(uint roll,string memory name,uint age) public{
     
          student_info[roll].name=name;
          student_info[roll].age=age;
    }*/
    function some() public{
      student_info[1]=Student(16,"adam");
      student_info[2]=Student(23,"alex");
      


    }
}