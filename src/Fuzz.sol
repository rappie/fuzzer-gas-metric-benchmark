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
        uint gasBefore = gasleft();
        benchmark.run();
        uint gasAfter = gasleft();
        fl.log("Gas used", gasBefore - gasAfter);

        fl.t(false, "Benchmark Complete");
    }
}
