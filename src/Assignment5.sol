// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    uint public counter; // Changed from int to uint
    bool public isActive;
    mapping(address => string) public userNames;

    struct User {
        uint id;
        string name;
    }

    User[] public users;

    
    constructor() {
        isActive = true;
    }

    
    function incrementCounter() external {
        for (uint i = 0; i < 5; i++) {
            counter += 1;
        }
    }

    
    function toggleActive() public {
        if (isActive == true) {
            isActive = false;
        } else {
            isActive = true;
        }
    }
    function addUser(uint id, string memory name, address userAddress) public {
        User memory user = User(id, name);
        users.push(user);
        userNames[userAddress] = name;
    }

    
    function getUserCount() public view returns (uint256) {
        return users.length;
    }
}
