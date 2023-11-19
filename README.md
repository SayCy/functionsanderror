# Functions and Error Smart Contract

## Overview

This Solidity smart contract, named "Functions and Error," implements basic functionalities for token minting and burning. It includes features such as public variables, a mapping structure, and events for minting and burning tokens.

## Contract Details

### Public Variables

- `name`: The name of the token.
- `symbol`: The symbol of the token.
- `totalSupply`: The total supply of the token.

### Mapping

- `balances`: A mapping that associates addresses with token balances.

## Functions

### Constructor

The constructor initializes the `name` and `symbol` of the token.


### Mint Function

The `mint` function allows users to mint new tokens. It checks for a positive amount and avoids overflow.

### Burn Function

The `burn` function enables users to burn a specified amount of tokens, with a check for excessive amounts.
