// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;  // stating our solidity version

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    // Variables are holders for different values & these values can have one of these types

    // favoriteNumber gets initialized to 0 if no value is given

    // Make the favoriteNumber an internal variable and have the 
    // retrieve() function be the way to get this
    uint256 myFavoriteNumber; // 0

    // uint256[] listOfFavoriteNumbers;

    // Custom type: Person
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Create an array of persons
    Person[] public listOfPeople; // [] -> defualts to an empty list

    // Create a variable of type Person
    // Person public roj = Person({favoriteNumber: 7, name: "Roj"});
    // Person public mariah = Person({favoriteNumber: 16, name: "Mariah"});
    // Person public jon = Person({favoriteNumber: 12, name: "Jon"});

    // This function is responsible for updating our favoriteNumber. 
    // Stores a new favoriteNumber
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    

    // When we add the public keyword to favoriteNumber, it is the exact same as 
    // if we created a getter function to return the favoriteNumber.
    // This function is similar to what the public keyword is creating
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    // Add a person to our list of people
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
}