// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Sample} from "../src/Sample.sol";

contract SampleTest is Test {
    Sample public sample;
    address public random = address(142356);

    function setUp() public {
        sample = new Sample();
    }

    function testMint() public {
        sample.mint(address(random), 100);
        assertEq(sample.balanceOf(address(random)), 100);
    }

    function testSetup() public {
        assertEq(sample.name(), "Sample");
        assertEq(sample.symbol(), "SPL");
        assertEq(sample.decimals(), 18);
        assertEq(sample.totalSupply(), 1000000 * 10 ** 18);
    }
}
