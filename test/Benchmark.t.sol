// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor() ERC20("Token", "TKN") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}

contract Benchmark is Test {
    Token token;

    function setUp() public {
        token = new Token();
    }

    function test_benchmark() public {
        token.mint(address(this), 1000);
        console.log("token balance: ", token.balanceOf(address(this)));
    }
}
