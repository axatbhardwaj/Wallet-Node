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