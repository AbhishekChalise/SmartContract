// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleFactory {

    SimpleStorage[] public listofSimpleStorageContract;

    function createSimpleStorageContract() public {

        SimpleStorage newstorage = new SimpleStorage();

        listofSimpleStorageContract.push(newstorage);
    }

    function sfstore (
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        // Address
        // ABI
        listofSimpleStorageContract[_simpleStorageIndex].store(
            _simpleStorageNumber
        );
    }

    function sfGet(uint256 _simplestorageIndex) public view returns (uint256) {
        return listofSimpleStorageContract[_simplestorageIndex].retrieve();
    }
}

