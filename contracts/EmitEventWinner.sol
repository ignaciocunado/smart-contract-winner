// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

interface Contract {
    function attempt() external; //Define an interface to represent the smart contract to which we want to send data
}

contract EmitEventWinner {
    function sendData(address contractAddress) external{
        Contract(contractAddress).attempt();
    }
}