// https://eth-goerli.g.alchemy.com/v2/znDAMOq17G9omWr8Xj6_jgDGbjCJoiyT

require('@nomiclabs/hardhat-waffle')

module.exports={
  solidity : '0.8.0',
  networks: {
    goerli:{
      url: 'https://eth-goerli.g.alchemy.com/v2/znDAMOq17G9omWr8Xj6_jgDGbjCJoiyT',
      accounts: ['9f05826d301db05a81be89e411ca25ee493ff448885225ff4ddec489e8c32101']
    }
  }
}