pragma solidity ^0.8.19;

contract Campaign {
    struct Request {
        string description;
        uint value;
        address recipient;
        bool complete;
    }

    Request[] public requests;
    address public manager;
    uinit public minimumContribution;
    address[] public approvers;

    modifier restricted() {
        require(msg.sender == manager); // makes sure only manager can call this function
    }

    // constructor
    function Campaign(uint minimum) public {
        manager = msg.sender;
        minimumContribution = minimum;
    }

    function contribute() public payable {
        require(msg.value > minimumContribution); // makes sure user sends more than minimum contribution amt
        
        approvers.push(msg.sender);


    }

    function createRequest 
}