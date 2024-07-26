# newMyToken Solidity Program

This Solidity program is a simple token contract that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works, particularly in creating and managing a simple token.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract defines a basic token with a name, abbreviation, total supply, and balances for each address. It also provides functions to mint new tokens and burn existing tokens. This program serves as a simple and straightforward introduction to Solidity programming and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing the Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix Ethereum](https://remix.ethereum.org/).

1. **Create a New File**
   - Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar.
   - Save the file with a `.sol` extension (e.g., `newMyToken.sol`).

2. **Copy and Paste the Code**
   - Copy and paste the following code into the file:

     ```solidity
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
     ```

3. **Compile the Code**
   - Click on the "Solidity Compiler" tab in the left-hand sidebar.
   - Make sure the "Compiler" option is set to "0.8.18" (or another compatible version).
   - Click on the "Compile newMyToken.sol" button.

4. **Deploy the Contract**
   - Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.
   - Select the `newMyToken` contract from the dropdown menu.
   - Click on the "Deploy" button.

5. **Interact with the Contract**
   - Once the contract is deployed, you can interact with it by calling the various functions.
   - Click on the `newMyToken` contract in the left-hand sidebar to expand it.
   - You can mint new tokens by calling the `nwmint` function, specifying the address and amount.
   - You can burn tokens by calling the `nwburn` function, specifying the address and amount.
  
  6. AUTHOR-

     ankitkumarrbt1903@gmail.com

This simple token contract provides a foundational understanding of Solidity programming and can be expanded with additional features and functionality as needed.
