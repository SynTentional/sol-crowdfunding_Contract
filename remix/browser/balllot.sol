pragma solidity ^0.8.19;

contract Campaign {
    address public manager;
    uinit public minimumContribution;
    address[] public approvers;

    // constructor
    function Campaign(uint minimum) public {
        manager = msg.sender;
        minimumContribution = minimum;
    }

    function contribute() public payable {
        require(msg.value > minimumContribution); // makes sure user sends more than minimum contribution amt
        
        approvers.push(msg.sender); // adds user to approvers array
    }
}