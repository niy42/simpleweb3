// project title - simpleStorage.sol
// project completed by niy42
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract simpleStorage {
    uint256 number;

    struct People {
        uint256 num;
        string name;
    }

    // declaring an array of people
    People[] public people;

    //maps string to integer and returns an integer
    mapping(string => uint256) public stringTonum;

    // we are making a state change
    // function stores a value in number
    function store(uint256 _num) public {
        number = _num;
    }

    // viewing from state
    // displays stored value in number, by returning number
    function retrieve() public view returns (uint256) {
        return number;
    }

    // we are making a state change
    // function addPeople store names and numbers into array people
    // mapping helps to retrieve stored _num, ...
    // when _name is entered into stringTonum
    function addPeople(string memory _name, uint256 _num) public {
        people.push(People(_num, _name));
        stringTonum[_name] = _num;
    }
}
