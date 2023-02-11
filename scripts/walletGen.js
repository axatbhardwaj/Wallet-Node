const ethers = require('ethers')
async function createWallet() {
const wallet = ethers.Wallet.createRandom()
   // console.log(wallet);
    return {
        address: wallet.address,
        seedPhrase: wallet.mnemonic.phrase,
        privatekey: wallet.privateKey
    };
}
createWallet();


/*
from mnemonic 

const ethers = require('ethers');
let mnemonic = "YOUR MNEMONIC";
let mnemonicWallet = ethers.Wallet.fromMnemonic(mnemonic);
console.log(mnemonicWallet.privateKey)

*/