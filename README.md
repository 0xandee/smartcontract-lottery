# Brownie Funding Project

This is a Simple Funding Project using Brownie to interact with brownie ganache / local ganache / mainnet-fork / testnet in a python enviroment. With features like send fund with entrance fee and withdraw fund.

  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Testnet Development](#testnet-development)
  - [Local Development](#local-development)
  - [Deploy to a testnet / Scripts](#deploy-to-a-testnet--scripts)
  - [Testing on local blockchain](#testing-on-local-blockchain)
  - [Adding additional Chains](#adding-additional-chains)
  - [Resources](#resources)
  - [License](#license)

## Prerequisites

- [python](https://www.python.org/downloads/)

## Installation

[Install Brownie](https://eth-brownie.readthedocs.io/en/stable/install.html)

```bash
python3 -m pip install --user pipx
python3 -m pipx ensurepath
# restart your terminal
pipx install eth-brownie
```
Or
```bash
pip install eth-brownie
```

## Testnet Development

Set your `WEB3_INFURA_PROJECT_ID` by creating a project of [Infura](https://infura.io/), and `PRIVATE_KEY` [environment variables](https://www.twilio.com/blog/2017/01/how-to-set-environment-variables.html) from your ethereum wallet like [metamask](https://metamask.io/).

You'll also need testnet rinkeby ETH and LINK. You can get LINK and ETH into your wallet by using the [rinkeby faucets located here](https://docs.chain.link/docs/link-token-contracts#rinkeby).

Then add your environment variables to the `.env` file:

```
export WEB3_INFURA_PROJECT_ID=<PROJECT_ID>
export PRIVATE_KEY=<PRIVATE_KEY>
```

AND THEN RUN `source .env` TO ACTIVATE THE ENV VARIABLES

## Local Development

For local testing [install ganache-cli](https://www.npmjs.com/package/ganache-cli)
```bash
npm install -g ganache-cli
```

All the scripts are designed to work locally or on a testnet. You can add a ganache-cli or ganache UI chain like so:

```
brownie networks add Ethereum ganache host=http://localhost:8545 chainid=1337
```

## Deploy to a testnet / Scripts

```
brownie run scripts/deploy.py
```

This will deploy mocks on development enviroment (ganache-local)
Or deploy on Kovan/Rinkeby testnet:

```
brownie run scripts/deploy.py --network rinkeby  
```

## Testing on local blockchain

```
brownie test
```

Or, test on Kovan/Rinkeby testnet:

```bash
brownie test --network kovan
brownie test --network rinkeby
```

## Adding additional Chains

```
brownie networks add Ethereum binance-smart-chain host=https://bsc-dataseed1.binance.org chainid=56
```

or, for a fork: 

```
brownie networks add development binance-fork cmd=ganache-cli host=http://127.0.0.1 fork=https://bsc-dataseed1.binance.org accounts=10 mnemonic=brownie port=8545
```

## Resources

* [Chainlink Documentation](https://docs.chain.link/docs)
* [Brownie documentation](https://eth-brownie.readthedocs.io/en/stable/).
* [freeCodeCamp Solidity, Blockchain, and Smart Contract Course](https://www.youtube.com/watch?v=M576WGiDBdQ&list=WL&ab_channel=freeCodeCamp.org).

## License

This project is licensed under the [MIT license](LICENSE).




