const hre = require("hardhat");

async function main() {
  const initBalance = 5;
  const SavingAccount = await hre.ethers.getContractFactory("SavingAccount");
  const savingaccount = await SavingAccount.deploy(initBalance);
  await savingaccount.deployed();

  console.log(`A contract with balance of ${initBalance} eth deployed to ${savingaccount.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});