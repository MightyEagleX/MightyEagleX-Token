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

## Smart Contract Overview

The `MightyEagleX.sol` contract follows the ERC-20 standard with additional features for minting and burning tokens.

- **Minting**: Only the contract owner can mint new tokens.
- **Burning**: Any token holder can burn their tokens to permanently reduce the supply.
- **Ownable**: The contract is controlled by an owner who has permission to mint tokens.

### Functions

1. **mint(address to, uint256 amount)**: Mints new tokens and sends them to the specified address. Only the contract owner can call this function.
2. **burn(uint256 amount)**: Burns tokens from the caller’s account, reducing the total supply.
3. **transfer(address to, uint256 amount)**: Transfers tokens to another address.

## How to Deploy

To deploy the contract, follow these steps:

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/MightyEagleX.git
   cd MightyEagleX

2. Deploy using Remix IDE:

Open Remix IDE.

Create a new Solidity file and paste the MightyEagleX.sol contract code from this repository.

Compile the contract and deploy it on your preferred network (Ethereum mainnet or testnet).



3. Set the initial supply during deployment:

// Example: Deploy with 1 million tokens as initial supply
uint256 initialSupply = 1000000;


4. Confirm the deployment and interact with your contract using MetaMask or MyEtherWallet.



Example Usage

Minting Tokens

As the contract owner, you can mint additional tokens:

mint(0xYourAddress, 50000);  // Mints 50,000 MTEX tokens to the specified address.

Burning Tokens

Any holder can burn their tokens:

burn(10000);  // Burns 10,000 MTEX tokens from your balance.

Token Transfers

You can transfer tokens to any address:

transfer(0xRecipientAddress, 2000);  // Transfers 2,000 MTEX tokens.

License

This project is licensed under the MIT License - see the LICENSE file for details.

---

Make sure to update the placeholders (e.g., `https://github.com/yourusername/MightyEagleX.git`) with your actual repository details, and adjust the initial supply as needed during deployment.

