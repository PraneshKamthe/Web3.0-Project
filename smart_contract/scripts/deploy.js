const main = async () => {
  const Transaction = await hre.ethers.getContractFactory("Transaction");
  const transaction = await Transaction.deploy();
  await transaction.deployed()
  console.log("Transaction deployed to : ", transaction.address);

  console.log();
};

const runMain = async () => {
  try {
    await main();
    process.exit(0); //0 means process ends sucessfully
  } catch (error) {
    console.log(error.message);
    process.exit(1); //1 means there was an error
  }
};

runMain();
