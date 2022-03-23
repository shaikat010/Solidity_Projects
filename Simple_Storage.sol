//SPDX=License-Identier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract Simple_Storage {

    // this will get initialised to zero
    uint256 public favouriteNumber;
    bool favouriteBool;


    struct People {
        uint256 favouriteNumber;
        string name;

    }

    // dynamic and fixed
    People[] public people;

    mapping(string => uint256) public nameToFavouriteNumber;


    //People public person = People({favouriteNumber: 2, name : "Patrick"});

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    //view,pure
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }



    
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber,_name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
        
    }

}


 
