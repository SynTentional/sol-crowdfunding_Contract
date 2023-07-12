pragma solidity ^0.8.19;

contract Campaign {
    address public manager;
    uinit public minimumContribution;

    // constructor
    function Campaign(uint minimum) public {
        manager = msg.sender;
        minimumContribution = minimum;
    }
}