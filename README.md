# ETH-Project-Creating-a-Token
# Description
MyToken is a simple Solidity smart contract that defines a custom token named "Dheeraj" with the abbreviation "Kumar". It supports basic token functionalities such as minting and burning tokens while keeping track of the total supply and individual balances.
# Getting Started
### Public Variables:

tokenName: The name of the token (Dheeraj).

tokenAbbrv: The abbreviation of the token (Kumar).

totalSupply: The total number of tokens in circulation.

    string public tokenName = "Dheeraj";
    string public tokenAbbrv = "Kumar";
    uint public totalSupply = 0;

### Mapping:
balances: A mapping from addresses to their respective token balances.

    mapping(address => uint) public balances; 

### Mint Function:
Increases the total supply and the balance of a specified address.

function mint(address _address, uint _value) public  
    {
    totalSupply += _value;
    balances[_address] += _value;             
    }

### Burn Function:
Decreases the total supply and the balance of a specified address, with a condition that the balance must be greater than or equal to the amount to be burned.

function burn (address _address, uint _value) public  
    {
        if (balances[_address] >= _value)                 
        {
          totalSupply -= _value;
          balances[_address] -= _value;                  
        }
    }



