pragma solidity >=0.5.0;

/*
 * SokuSwapFinance 
 * App:             https://Sokuswap.finance
 * Medium:          https://medium.com/@Soku_swap    
 * Twitter:         https://twitter.com/Soku_swap 
 * Telegram:        https://t.me/Soku_swap
 * Announcements:   https://t.me/Soku_swap_news
 * GitHub:          https://github.com/SokuSwapFinance
 */

interface ISokuFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}
