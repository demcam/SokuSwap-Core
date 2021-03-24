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

interface ISokuCallee {
    function sokuCall(address sender, uint amount0, uint amount1, bytes calldata data) external;
}
