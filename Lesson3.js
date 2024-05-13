const { ethers } = require("hardhat");

async function main() {
    const EventTest = await hre.ethers.getContractFactory("myBank");
    const eventTest = await EventTest.deploy();

    contract.on("Added", (account, amount) => {
        console.log("Balance added:");
        console.log("Account:", account);
        console.log("Amount:", amount.toString());
    });

    contract.on("Deducted", (account, amount) => {
        console.log("Balance deducted:");
        console.log("Account:", account);
        console.log("Amount:", amount.toString());
    });

    contract.on("Displayed", (account, balance) => {
        console.log("Balance displayed:");
        console.log("Account:", account);
        console.log("Balance:", balance.toString());
    });

    await contract.addBalance(100); 
    await contract.displayBalance(); 
    await contract.deductBalance(50); 
    await contract.displayBalance(); 

    contract.removeAllListeners();
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
