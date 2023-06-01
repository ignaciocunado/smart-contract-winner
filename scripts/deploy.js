const hre = require("hardhat");

async function main() {
  const contractAddress = "0xcF469d3BEB3Fc24cEe979eFf83BE33ed50988502"; //Address of the Goerli contract we want to send data to
  const EmitEventWinner = await hre.ethers.getContractFactory("EmitEventWinner");
  const emitEventWinner = await EmitEventWinner.deploy(); //Deploy the contract

  await emitEventWinner.deployed();

  console.log("Contract is deployed to " + emitEventWinner.address);

  await emitEventWinner.sendData(contractAddress); //Invoke the function to send the data
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
