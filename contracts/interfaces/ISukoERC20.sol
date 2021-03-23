pragma solidity >=0.5.0;

/*
 * SukoSwapFinance 
 * App:             https://Sukoswap.finance
 * Medium:          https://medium.com/@Suko_swap    
 * Twitter:         https://twitter.com/Suko_swap 
 * Telegram:        https://t.me/Suko_swap
 * Announcements:   https://t.me/Suko_swap_news
 * GitHub:          https://github.com/SukoSwapFinance
 */

interface ISukoERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;
}
