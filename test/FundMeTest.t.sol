// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    uint256 number = 1;

    FundMe fundMe;

    function setUp() external {
        number = 2;
        fundMe = new FundMe();
    }

    function testMinimumUsd() public view {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testDemo() public view {
        console.log(number);
        console.log("number");
        assertEq(number, 2);
    }

    function testOwnerIsMsgSender() public view {
        console.log(fundMe.i_owner(), address(this));
        assertEq(fundMe.i_owner(), address(this));
    }

    function testVersion() public view {
        uint256 version = fundMe.getVersion();
        assertEq(version, 4);
    }
}
