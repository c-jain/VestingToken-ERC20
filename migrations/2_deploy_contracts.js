var VestingToken = artifacts.require("./VestingToken.sol");

module.exports = function(deployer) {
  deployer.deploy(VestingToken);
};
