// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;
pragma experimental ABIEncoderV2;

import "./SimpleStorage.sol";


contract ExtraStorage is SimpleStorage {

    uint length;
    address owner;

    event Funded(address indexed from, uint amount);

    mapping(address => uint) public addressToAmountFunded;

    function pushPersons(People memory _persons) public override{
        persons.push(_persons);
        length++;
    }

    constructor() {
        owner = msg.sender;
    }
    
}