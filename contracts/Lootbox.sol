// contracts/Lootbox.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Lootbox {
    event Reward(address indexed player, uint256 reward);

    function open() external {
        uint256 r = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % 100;
        emit Reward(msg.sender, r);
    }
}
