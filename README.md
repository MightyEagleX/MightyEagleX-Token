# MightyEagleX (MTEX) Token

**MightyEagleX (MTEX)** is an ERC-20 token built on the Ethereum blockchain. It is designed to empower decentralized finance (DeFi) projects, enabling users to participate in the ecosystem with security, scalability, and transparency.

## Key Features

- **Token Name**: MightyEagleX
- **Symbol**: MTEX
- **Total Supply**: [Define your initial supply during deployment]
- **Decimals**: 18
- **Contract Standard**: ERC-20
- **Blockchain**: Ethereum
- **Minting/Burning**: The owner can mint new tokens, and users can burn their tokens to reduce supply.

## Smart Contract Code

Below is the code for the **MightyEagleX (MTEX)** token contract:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Main contract for the MightyEagleX (MTEX) token
contract MightyEagleX is ERC20, Ownable {
    
    // Constructor to initialize the token with an initial supply
    constructor(uint256 initialSupply) ERC20("MightyEagleX", "MTEX") {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    // Function to mint new tokens (only the owner can call this)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens, reducing the total supply
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
