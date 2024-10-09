// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// The main contract for the MightyEagleX token
contract MightyEagleX is ERC20, Ownable {
    
    // Constructor to initialize the token with an initial supply
    constructor(uint256 initialSupply) ERC20("MightyEagleX", "MTEX") {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    // Mint new tokens, only the owner can call this function
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn tokens, reducing the total supply
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
