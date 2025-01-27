pragma solidity ^0.4.11;


import 'https://github.com/javaknows/LinkToken/blob/master/contracts/v0.4/token/linkBasicToken.sol';


/**
 * @title ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
contract linkERC20 is linkERC20Basic {
  function allowance(address owner, address spender) constant returns (uint256);
  function transferFrom(address from, address to, uint256 value) returns (bool);
  function approve(address spender, uint256 value) returns (bool);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}
