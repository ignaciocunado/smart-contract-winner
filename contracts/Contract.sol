interface Contract {
    function attempt() external;
}

contract MyAttempt {
    function sendData(address contractAddress) {
        Contract(contractAddress).attempt();
    }
}