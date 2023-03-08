### TRANSACT HASH : 0xf69ec0bb12be1a650039f024da3e5103ec336c6f0612c3a112d751030ce679ce
<img width="1386" alt="截屏2023-03-08 16 37 44" src="https://user-images.githubusercontent.com/17665963/223663897-68516ec4-c6e1-49db-90e2-6aed3b5e3260.png">

### Remix deploy contract hash : 0x9b27718dfbdc8f178a68905bef935fa00dba0d3ec4108581df8ef54ad0b2409b

<img width="988" alt="截屏2023-03-08 16 36 15" src="https://user-images.githubusercontent.com/17665963/223663576-5380d7cb-0f7c-4890-a28b-28a755fc2da0.png">

My code :

```

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

```
