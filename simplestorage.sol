// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

contract SimpleStorage {
    uint256 my_integer = 10;

    bool my_boolean = true;
    string my_string = "Hello, world";

    bytes my_bytes = "Hello, world";

    uint256 favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve () public view returns(uint256) {
        return favoriteNumber;
    }

    struct People{
        uint256 favoriteNumber;
        string name;
    }

        People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}