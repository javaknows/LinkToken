pragma solidity ^0.4.11;


import 'https://github.com/javaknows/LinkToken/blob/master/contracts/v0.4/token/linkERC20Basic.sol';
import 'https://github.com/javaknows/LinkToken/blob/master/contracts/v0.4/math/linkSafeMath.sol';


/**
 * @title Basic token
 * @dev Basic version of StandardToken, with no allowances. 
 */
contract linkBasicToken is linkERC20Basic {
  using linkSafeMath for uint256;

  mapping(address => uint256) balances;

  /**
  * @dev transfer token for a specified address
  * @param _to The address to transfer to.
  * @param _value The amount to be transferred.
  */
  function transfer(address _to, uint256 _value) returns (bool) {
    balances[msg.sender] = balances[msg.sender].sub(_value);
    balances[_to] = balances[_to].add(_value);
    Transfer(msg.sender, _to, _value);
    return true;
  }

  /**
  * @dev Gets the balance of the specified address.
  * @param _owner The address to query the the balance of. 
  * @return An uint256 representing the amount owned by the passed address.
  */
  function balanceOf(address _owner) constant returns (uint256 balance) {
    return balances[_owner];
  }

}
