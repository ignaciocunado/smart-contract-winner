// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

interface Contract {
    function attempt() external;
}

contract EmitEventWinner {
    function sendData(address contractAddress) external{
        Contract(contractAddress).attempt();
    }
}