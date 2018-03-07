pragma solidity ^0.4.13;

import "../node_modules/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract XdacToken is StandardToken {
    string public name = "XDAC COIN";
    string public symbol = "XDAC";
    uint8 public decimals = 18;

    uint256 public constant INITIAL_SUPPLY = 1000000000 * (10 ** uint256(decimals));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    function XdacToken() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }

}
