// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Fuzz {
    constructor() payable {}

    function benchmark() public payable {
        assert(false);
    }
}
