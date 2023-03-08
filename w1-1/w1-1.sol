//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

// sepolia testnet : 0x9b27718dfbdc8f178a68905bef935fa00dba0d3ec4108581df8ef54ad0b2409b

contract Counter {
    uint256 count = 0;

    constructor(uint256 x) {
        count = x;
    }

    function add(uint256 x) public {
        count = count + x;
    }

    function read() public view returns (uint256) {
        return count;
    }
}
