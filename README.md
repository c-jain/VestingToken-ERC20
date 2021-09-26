# VestingToken-ERC20
Solidity smart contract showcasing the simple ERC20 token vesting.

## Description
A sample ERC-20 token:
1. 18 decimal places
2. Initial supply of 100
3. Total supply of 1000
4. Vesting - every year, 25% will be issued

## Prerequisites
- Solidity v0.8.0
- Truffle v5.4.12
- npm v6.14.11

**NOTE:**
- Create a `.env` file at root level and add following two variables with appropriate values as they are required in `truffle.js` file:
    * MNEMONIC - 12 secret recovery phrase needed for your hardware wallet
    * ROPSTEN_KEY - Your **Infura** account's ropsten key

## Steps to run the code
1. Clone the repository
2. Install dependencies for truffle
```
npm i
```
3. Compile contracts
```
truffle compile
```
4. Deploy contracts to ropsten
```
truffle deploy --network ropsten
```
5. After successful deployment, you can see the transaction on etherscan.