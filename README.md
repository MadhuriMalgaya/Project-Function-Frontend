# Project-Function-Frontend
# Sample Hardhat Project
This Solidity program defines a basic SavingAccount contract to demonstrate fundamental concepts and functionalities of the Solidity programming language. It allows only the contract owner to deposit and withdraw funds, providing an introduction to access control, state management, and event logging in Solidity. This program serves as a starting point for beginners to understand and interact with Ethereum smart contracts.

# Description
This project is a basic dApp (decentralized application) that demonstrates the integration of Ethereum smart contracts with a React frontend. It includes the following components:

1. Solidity Smart Contract: A SavingAccount contract that allows the owner to deposit and withdraw funds, showcasing basic functionalities like state management, access control, and event logging.
2. Hardhat Deployment: The project uses Hardhat for compiling, deploying, and testing the smart contract. A deployment script initializes the contract with a balance and logs the deployed contract's address.
React Frontend: The frontend is built with React and styled-components, providing a user-friendly interface to interact with the smart contract. It connects to MetaMask for managing user accounts and executing transactions.
3. index.js Integration: The frontend utilizes index.js to communicate with the deployed smart contract, enabling functionalities such as checking the balance, depositing, and withdrawing funds.

# Getting Started
# Executing program
To run this programs, you can use Remix, an online Solidity IDE and visual studio code. To get started, go to the Remix website at https://remix.ethereum.org/.This IDE is only for smart contract code.
here, we use hardhat programming environment, java-script, solidity programming and react.js for interface or frontend.
```
// Here, main commands for project 
npm install
npm install --save-dev hardhat
npx hardhat
npx hardhat node
npx hardhat run --network localhost scripts/deploy.js
npm run dev
```

![image](https://github.com/MadhuriMalgaya/Project-Function-Frontend/assets/129099016/5d009fa0-77a5-4be8-a671-ecf62eb5dceb)
![image](https://github.com/MadhuriMalgaya/Project-Function-Frontend/assets/129099016/0820242b-f903-4703-9dcd-c8d31fa1883a)

# Authors
Madhuri Malgaya
madhumalgaya@gmail.com

# License
This project is licensed under the MIT License - see the LICENSE.md file for details
