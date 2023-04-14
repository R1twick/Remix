// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EventContract {
     struct Event{
         address organizer;
         string name;
         uint date;
         uint price;
         uint ticketcount;
         uint ticketRemain;
     }
   mapping(uint=>Event) public events;
   mapping(address=>mapping(uint=>uint)) public tickets;
   uint public nextId;

   function createEvent(string memory name,uint date,uint price,uint ticketcount) external{
     require(date>block.timestamp,"u can organise event on any other day in future");
     require(ticketcount>0,"u don't have sufficient no of ticket");

     events[nextId] = Event(msg.sender,name,date,price,ticketcount,ticketcount);
     nextId++;
   }
   function buyTicket(uint id,uint qty) external payable{
       require(events[id].date!=0,"show doesnot exist");
       require(events[id].date>block.timestamp,"event has already occured");
       Event storage _event = events[id];
       require(msg.value==(_event.price*qty),"ether is not enough");
       require(_event.ticketRemain>=qty,"not enough tickets");
       _event.ticketRemain-=qty;
       tickets[msg.sender][id]+=qty;
}
    function transferticket(uint id, uint qty, address to) external{
        require(events[id].date!=0,"show doesnot exist");
       require(events[id].date>block.timestamp,"event has already occured");
       require(tickets[msg.sender][id]>=qty,"u don't have enough tickets");
       tickets[msg.sender][id]-=qty;
       tickets[to][id]+=qty;
    }

}