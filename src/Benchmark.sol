// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Token} from "src/Token.sol";

contract Benchmark {
    Token token;

    constructor() {
        token = new Token();
    }

    function bench() public returns (uint256) {
        uint gasBefore = gasleft();
        this.run();
        uint gasAfter = gasleft();
        return gasBefore - gasAfter;
    }

    function run() public {
        for (uint256 i = 0; i < 100; i++) {
            token.mint(msg.sender, pow(2, i));
        }
    }

    function pow(uint256 base, uint256 exponent) internal pure returns (uint256 result) {
        result = 1;
        while (exponent > 0) {
            if (exponent % 2 == 1) {
                result *= base;
            }
            base *= base;
            exponent /= 2;
        }
    }
}
