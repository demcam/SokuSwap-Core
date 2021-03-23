pragma solidity =0.5.16;

import '../SukoERC20.sol';

contract ERC20 is SukoERC20 {
    constructor(uint _totalSupply) public {
        _mint(msg.sender, _totalSupply);
    }
}
