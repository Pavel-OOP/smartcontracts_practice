// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;
pragma experimental ABIEncoderV2;

contract SimpleStorage {

    People public person;
    People[] public persons;
    uint public peopleTupleLength = 2;

    struct People {
        string name;
        uint age;
        string separate;
    }

    function personCreation(string memory _name, uint _age, string memory _separate) public returns(People memory) {
        _separate = "||";
        person = People(_name, _age, _separate);
        pushPersons(person);
        return person;
    }

    function pushPersons(People memory _persons) public {
        persons.push(_persons);
    }

    function getAllPersons() public view returns (People[] memory){
        return persons;
    }
}