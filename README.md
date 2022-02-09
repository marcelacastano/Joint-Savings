# Ethereum-Based Joint Savings Account 🪙

- Two-wallet address savings account deployed on Javascript VM using the Remix IDE

![smart-contract](Execution_Results/smart-contract.gif)

## Source Code 🔍

[Code for joint savings account](joint_savings.sol)

[Screenshots of contract functionality](Execution_Results)

## Here's How it Works👇

## Set Accounts

Use the following dummy accounts, or create new, dummy addresses on the [Vanity-ETH](https://vanity-eth.tk/):

Dummy account1:
> address: 0x0c0669Cd5e60a6F4b8ce437E4a4A007093D368Cb

Dummy account2:
> address: 0x7A1f3dFAa0a4a19844B606CD6e91d693083B12c0

Use the `setAccounts` function to define the authorized Ethereum address that will be able to withdraw funds from the smart contract:

- Enter wallet addres for `account1` and `account2`
- Hit the `transact` button

![set-accounts](Execution_Results/set-accounts.png)

## Deposit Funds

Test the smart contract's `deposit` functionality:

- Enter deposit amount in the `value` field
- Click `deposit` button

<img src="Execution_Results/send1ether.png" alt="deposit" height="400"/>

Verify transaction in log:

![transaction](Execution_Results/1ethertransact.png)

## Check Account Balance

Use the `contractBalance` function to verify that the funds were added to the contract:

<img src="Execution_Results/contractbalance.png" alt="balance" height="400"/>

Verify transaction in log:

![balance-hash](Execution_Results/contractbalancehash.png)

## Withdraw Funds

Test the contract's withdrawal functionality:

- Enter the withdrawal `amount` and `recipient` account address
- Click on the `transact` button

![withdraw5](Execution_Results/withdraw5.png)

Verify transaction in log:

![withdraw-hash](Execution_Results/withdraw5hash.png)

Use the `lastToWithdraw` and `lastWithdrawAmount` functions to verify withdrawals:

<img src="Execution_Results/withdraw10.png" alt="withdraw" height="400"/>

## Useful Links 🆘

Remix Project: https://remix-project.org/
