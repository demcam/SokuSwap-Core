const HDWalletProvider = require("@truffle/hdwallet-provider");
require('dotenv').config();

module.exports = {
    networks: {
        development: {
            host: "127.0.0.1",
            port: 8545,
            network_id: "*"
        },
        test: {
            host: "localhost",
            port: 8545,
            network_id: "*"
        },
        bsc: {
            provider: function() {
                return new HDWalletProvider(
                    process.env.MNEMONIC,
                    `https://bsc-dataseed1.binance.org`
                )
            },
            network_id: 56
        },
        
        testnet: {
            provider: function() {
                return new HDWalletProvider(
                    process.env.MNEMONIC,
                    `wss://data-seed-prebsc-1-s1.binance.org:8545`
                )
            },
            network_id: 97,
            confirmations: 10,
            timeoutBlocks: 200,
            networkCheckTimeout: 1000000,
            skipDryRun: true
        }
    },

    compilers: {
        solc: {
            version: "0.6.12",
            optimizer: {
                enabled: true,
                runs: 200
            }
        }
    },

    plugins: [
        'truffle-plugin-verify'
    ],

    api_keys: {
      bscscan: process.env.BSCSCAN_API_KEY
    }
};
