// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;
pragma experimental ABIEncoderV2;


contract FundMe {
    
    uint public minUSD=50;
    function fund() public payable{
        // minimum amount
        require(msg.value >= minimum, "You didn't lock enough funds")
    }

    
} 