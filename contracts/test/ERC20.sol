pragma solidity =0.5.16;

import '../SokuERC20.sol';

contract ERC20 is SokuERC20 {
    constructor(uint _totalSupply) public {
        _mint(msg.sender, _totalSupply);
    }
}
