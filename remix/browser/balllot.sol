pragma solidity ^0.8.19;

contract Campaign {
    address public manager;

    // constructor
    function Campaign() public {
        manager = msg.sender;
    }
}