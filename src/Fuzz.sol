// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@perimetersec/fuzzlib/src/FuzzBase.sol";

import {Benchmark} from "src/Benchmark.sol";

contract Fuzz is FuzzBase {
    Benchmark benchmark;

    constructor() payable {
        benchmark = new Benchmark();
    }

    function fuzz_benchmark() public payable {
        uint256 g = benchmark.bench();
        fl.log("Gas used", g);
        fl.t(false, "Benchmark Complete");
    }
}
