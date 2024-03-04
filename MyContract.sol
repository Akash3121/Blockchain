// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {

    // Data types
    string public myString = "My String";
    bool public boolean1 = true;
    uint public myUint = 1; // unsigned integer
    int public myInt = 1;
    address public testAddress = 0x742d35Cc6634C0532925a3b844Bc454e4438f44e;

    //functions
    string name = "Example 1";
    function setName(string memory _name) public{
        name = _name;
    }

    function getName() public view returns(string memory){
        return name;
    }

    function resetName() public{
        name = "Example 1";
    }

    //visibility
    string name1 = "Name 1";
    string private name2 = "Name 2";
    string internal name3 = "Name 3";
    string public name4 = "Name 4";
}