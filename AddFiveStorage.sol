// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // + 5
    // overrides 
    // virtual override

    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}

// for inheriting the function we basically need to first over ride the function and then we can deploy the solidity smart contract

