pragma solidity ^0.6.6;

contract Lottery {
    address payable[] public players;

    function enter() public payable {
        // $50 minimum
        players.push(msg.sender);
    }

    function getEntranceFee() public view returns (uint256) {}

    function startLottery() public {}

    function endLottery() public {}
}
