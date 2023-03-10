// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    //每一次测试前都会调用这个函数
    function setUp() public {
        counter = new Counter(1);
    }

    function testOnlyUp() public {
        counter.add(1);
        assertEq(counter.read(), 2);
    }

    function testFailonlyUp() public {
        vm.prank(address(0));
        counter.add(1);
    }
}
