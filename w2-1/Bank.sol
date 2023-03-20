//SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Bank {
    uint256 allValue = 0;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    // function deposite() public payable{
    //      (bool success,) = msg.sender.call{value: msg.value}(new bytes(0));
    //      if(success){
    //          allValue += msg.value;
    //      }
    // }

    receive() external payable {
        allValue += msg.value;
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function getAllValue() public view returns (uint256) {
        return allValue;
    }

    function withdraw(uint256 amount) external onlyOwner {
        require(address(this).balance >= amount);
        payable(msg.sender).transfer(amount);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
}
