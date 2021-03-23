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

interface ISukoCallee {
    function sukoCall(address sender, uint amount0, uint amount1, bytes calldata data) external;
}
