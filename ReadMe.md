# newMyToken Solidity Program

This Solidity program is a simple token contract that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works, particularly in creating and managing a simple token.

## Description
This project is a smart contract for a new token on the Ethereum blockchain, implemented in Solidity. The contract defines basic token properties and allows for minting and burning of tokens. This can be used as a foundation for creating and managing a custom cryptocurrency.

## Getting Started

### Installing
To get started with this project, you will need to have the Solidity compiler installed. You can download it from the official Solidity website or use an online compiler like Remix.

1. **Download the project:**
   Clone or download the project repository from GitHub.

2. **Install dependencies:**
   Ensure you have the Solidity compiler installed. You can install it via npm:

   ```bash
   npm install -g solc
   ```

3. **Open the project:**
   Open the project in your preferred Solidity development environment (e.g., Remix IDE).

### Executing program

1. **Compile the contract:**
   Open the `newMyToken.sol` file in your Solidity development environment and compile it.

2. **Deploy the contract:**
   Deploy the contract to your preferred Ethereum network (local, testnet, or mainnet).

3. **Interact with the contract:**
   Use the deployed contract's functions to mint and burn tokens. Below are the basic commands:

   
   // Mint tokens
   nwmint("recipient_address", value);
   
   // Burn tokens
   nwburn("holder_address", value);


### Help
For common problems or issues, ensure you have the correct Solidity version (0.8.18) installed. If you encounter any issues during compilation or deployment, refer to the Solidity documentation or seek help from online Solidity communities.

To view helper information, run the following command in your Solidity development environment:

help();

## Authors
ankitkumarrbt1903@gmail.com

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract newMyToken {
    string public nwTokenName = "NEWNAME";
    string public nwTokenAbbrv = "NEWABBRV";
    uint public nwTotalValue = 1000;

    mapping(address => uint) public nwbalances;

    function nwmint(address _address, uint _value) public {
        nwTotalValue += _value;
        nwbalances[_address] += _value;
    }

    function nwburn(address _address, uint _value) public {
        if (nwbalances[_address] >= _value) {
            nwTotalValue -= _value;
            nwbalances[_address] -= _value;
        }
    }
}
