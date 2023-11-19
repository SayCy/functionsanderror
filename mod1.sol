// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionsandError {
    //public variables
    string public name;
    string public symbol;
    uint256 public totalSupply;
    //mapping
    mapping(address => uint256) public balances;


    event Mint(address indexed account, uint256 amount);
    event Burn(address indexed account, uint256 amount);

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function mint(uint256 amount) public {
        require(amount > 0, "Mint amount must be greater than 0");
        assert(totalSupply + amount >= totalSupply); // to ensure there is no overflow
        balances[msg.sender] += amount;
        totalSupply += amount;
        emit Mint(msg.sender, amount);
    }

    function burn(uint256 amount) public {
        if (amount > 200) {
            revert("Burn amount too high");
        }
        require(balances[msg.sender] >= amount, "Insufficient funds for burning");
        balances[msg.sender] -= amount;
        totalSupply -= amount;
        emit Burn(msg.sender, amount);
    }
}
