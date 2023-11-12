//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract simpleStorage {
    uint256 number;

    struct People {
        uint256 num;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public stringTonum;

    function store(uint256 _num) public {
        number = _num;
    }

    function retrieve() public view returns (uint256) {
        return number;
    }

    function addPeople(string memory _name, uint256 _num) public {
        people.push(People(_num, _name));
        stringTonum[_name] = _num;
    }
}
