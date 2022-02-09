// SPDX-License-Identifier: GPL-3.0

// Joint Savings Account

pragma solidity ^0.8.11;

// Define a new contract named `JointSavings`
contract JointSavings {

    // Define contract variables
    address payable accountOne;
    address payable accountTwo;
    address public lastToWithdraw;
    uint public lastWithdrawAmount;
    uint public contractBalance;


    // Define a function named **withdraw** that accepts amount and recipient
    function withdraw(uint amount, address payable recipient) public {

        // Define a `require` statement that checks if the `recipient` is equal to either `accountOne` or `accountTwo`. 
        require(recipient == accountOne || recipient == accountTwo, "You don't own this account!");
        
        // Define a `require` statement that checks if the `balance` is sufficient to accomplish the withdraw operation. 
        require(address(this).balance >= amount, "Insufficient funds!");

        // Add `if` statement to check if the `lastToWithdraw` is not equal to (`!=`) to `recipient`.
            if (lastToWithdraw != recipient) {
                lastToWithdraw = recipient;
            }
       
        // Call the `transfer` function of the `recipient` and pass the `amount` to transfer as an argument.
        recipient.transfer(amount);
        
        // Set  `lastWithdrawAmount` equal to `amount`
        lastWithdrawAmount = amount;

        // Call the `contractBalance` variable and set it equal to the balance of the contract by using `address(this).balance`.
        contractBalance = address(this).balance - amount;
    }



    // Define a `public payable` function named `deposit`.
    function deposit() public payable {

        // Call the `contractBalance` variable and set it equal to the balance of the contract by using `address(this).balance`.
        contractBalance = address(this).balance;
    }



    // Define a `public` function named `setAccounts` that receives two `address payable` arguments named `account1` and `account2`.
    function setAccounts(address payable account1, address payable account2) public {

        // Set the values of `accountOne` and `accountTwo` to `account1` and `account2` respectively.
        account1 = accountOne;
        account2 = accountTwo;
    }

    // Add `fallback` and `receive` functions so that contract can store Ether sent from outside the deposit function.
    
    fallback() external payable {}
    receive() external payable {}
}
