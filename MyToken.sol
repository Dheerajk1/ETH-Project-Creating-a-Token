// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken 
{

    // public variables here
    string public tokenName = "Dheeraj";
    string public tokenAbbrv = "Kumar";
    uint public totalSupply = 0;                         // keeps track on total number of tokens.

    // mapping variable here
    mapping(address => uint) public balances;            // it allows us to check the token ammount that each address holds.

    // mint function
    function mint(address _address, uint _value) public  // it increases the totalSupply and Balance of the address .
    {
    totalSupply += _value;
    balances[_address] += _value;             
    }

    // burn function
    function burn (address _address, uint _value) public  // will be show balance after buring the some amount.
    {
        if (balances[_address] >= _value)                 // will make sure that the balance of account is greater than or equal to the amount that is supposed to be burnt.
        {
          totalSupply -= _value;
          balances[_address] -= _value;                  
        }
    }

}
