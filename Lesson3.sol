// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract balance {
    mapping(address => uint256) public balances;

    event Added(address indexed account, uint256 amount);
    event Deducted(address indexed account, uint256 amount);
    event Displayed(address indexed account, uint256 balance);

    function add(uint256 _amount) external {
        balances[msg.sender] += _amount;
        emit Added(msg.sender, _amount);
    }

    function deduct(uint256 _amount) external {
        require(balances[msg.sender] >= _amount, "Your Insufficient balance");
        balances[msg.sender] -= _amount;
        emit Deducted(msg.sender, _amount);
    }

    function display() external {
        emit Displayed(msg.sender, balances[msg.sender]);
    }
}
