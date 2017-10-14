pragma solidity ^0.4.2;

contract FiftyFifty {
  address public beneficary;
  address public pot;
  uint public raffleStart;
  uint public raffleDuration;
  address[] tickets;

  function start(uint duration) {
    beneficary = msg.sender;
    raffleStart = now;
    raffleDuration = duration;
  }

  function buyTicket {
    require(now < (raffleStart + raffleDuration));
    tickets.push(msg.sender);
    pot.transfer(msg.value);
  }

  function end() {
    require(now >= (raffleStart + raffleDuration));
    tickets[0].transfer(pot.value / 2);
    beneficary.transfer(pot.value / 2);
  }
}
