// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;
pragma experimental ABIEncoderV2;

contract SimpleStorage {

    People public person;
    People[] public persons;
    // uint public peopleTupleLength = 2;

    struct People {
        string name;
        uint age;
    }

    function personCreation(string memory _name, uint _age) public returns(People memory) {
        person = People(_name, _age);
        pushPersons(person);
        return person;
    }

    function pushPersons(People memory _persons) public virtual{
        persons.push(_persons);
    }

    function getAllPersons() public view returns (People[] memory){
        return persons;
    }

    function getPerson(uint _index) public view returns (People memory){
        return persons[_index];
    }

    
    
}
