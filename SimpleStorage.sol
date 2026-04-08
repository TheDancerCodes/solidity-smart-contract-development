// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;  // stating our solidity version

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    // Variables are holders for different values & these values can have one of these types

    // favoriteNumber gets initialized to 0 if no value is given

    // Adding the public keyword chnages the visibility of favoriteNumber public
    uint256 public favoriteNumber; // 0

    // This function is responsible for updating our favoriteNumber. 
    // Stores a new favoriteNumber
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // When we add the public keyword to favoriteNumber, it is the exact same as 
    // if we created a getter function to return the favoriteNumber.
    // This function is similar to what the public keyword is creating
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
}