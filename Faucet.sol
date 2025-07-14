// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Faucet{   
    // Give ether to anyone who asks
    function withdraw(uint withdraw_amount) public {

    // Ensure that the withdrawal amount is within the valid range
    require(withdraw_amount <= 1000000000000000000);

    // Send the amount to the address that requested it
    payable(msg.sender).transfer(withdraw_amount);

    
    }

    // Accept any incoming amount
    receive() external payable {}
}