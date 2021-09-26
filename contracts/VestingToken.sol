// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Vesting Token (VTK)
 * @author Chakshu Jain, India
 * @notice Implements a basic ERC20 token with vesting functionality.
 */
contract VestingToken is ERC20 {
    uint256 constant decimal = 10**18;
    uint256 noOfTimesTokenIssued = 0;
    uint256 createTime;
    address owner;

    /**
     * @notice The constructor for the VestingToken contract.
     */
    constructor() ERC20("Vesting_Token", "VTK") {
        _mint(msg.sender, 100 * decimal);
        createTime = block.timestamp;
        owner = msg.sender;
    }

    /**
     * @notice Function to issue the tokens
     */
    function issue() public {
        require(msg.sender == owner);
        require(noOfTimesTokenIssued < 4);
        uint256 noOfYearsPassed = (block.timestamp - createTime) / 365 days;
        require(noOfYearsPassed > noOfTimesTokenIssued);

        _mint(msg.sender, 225 * decimal);
        noOfTimesTokenIssued++;
    }
}
