// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

import {Benchmark} from "src/Benchmark.sol";

contract BenchmarkTest is Test {
    Benchmark benchmark;

    function setUp() public {
        benchmark = new Benchmark();
    }

    function test_benchmark() public {
        uint256 g = benchmark.bench();
        console.log("Gas used", g);
    }
}
