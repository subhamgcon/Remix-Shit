// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // stating our version - Solidity

contract SimpleStorage { // contract is like class in any OOP Language like Java
    // Basic Types: boolean, uint, int, address, bytes
    uint256 public myfavoriteNumber;

    // uint256[] listofFavoriteNumbers;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public myfriend = Person({favoriteNumber: 7, name: "Subh"});
    
    //dynamic array
    Person[] public listOfPeople; //[]
     
    // jon -> 2
    mapping(string => uint256) public nametoFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
        myfavoriteNumber = _favoriteNumber + 1;
    }
 // view, pure -> doesnt need to send transaction. Cannont modify the state 
 // of blockchain, this is just return or reading from state   
function retrieve() public view returns(uint256){
    return myfavoriteNumber;
}

function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listOfPeople.push(Person(_favoriteNumber, _name));
    nametoFavoriteNumber[_name] = _favoriteNumber;
}

}


