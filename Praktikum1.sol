pragma solidity  0.8.30;

contract  DataStore{

    struct Person {
        string nama;
        string alamat;
        string tanggal_lahir;
        string jenis_kelamin;
    }

    Person[] public person;

    function storeData(string memory _nama, string memory _alamat, string memory _tanggal_lahir, string memory _jenis_kelamin) public {
        person.push(Person( _nama, _alamat, _tanggal_lahir, _jenis_kelamin));
    }

}