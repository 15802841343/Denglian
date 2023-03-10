// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    address owner;
    uint256 count = 0;

    constructor(uint256 x) {
        owner = msg.sender;
        count = x;
    }

    function add(uint256 x) public onlyOwner {
        count = count + x;
    }

    function read() public view returns (uint256) {
        return count;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}
