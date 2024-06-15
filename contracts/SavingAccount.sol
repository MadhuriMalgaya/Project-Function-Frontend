// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;
contract SavingAccount {
    address payable public owner;
    uint public balance;
    event Deposit(uint amount);
    event Withdraw(uint amount);
    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }
     function getBalance() public view returns(uint){
        return balance;
    }
    function deposit(uint _amount) public payable {
        uint _previousBalance = balance;
        require(msg.sender == owner, "You are not the owner of this account");
        balance += _amount;
        assert(balance == _previousBalance + _amount);
        emit Deposit(_amount);
    }
    error InsufficientBalance(uint balance, uint withdrawAmount);
    function withdraw(uint _withdrawAmount) public {
        require(msg.sender == owner, "You are not the owner of this account");
        uint _previousBalance = balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }
        balance -= _withdrawAmount;
        assert(balance == (_previousBalance - _withdrawAmount));
        emit Withdraw(_withdrawAmount);
    }
}
