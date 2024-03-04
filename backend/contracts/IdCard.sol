// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;



contract ID_card{
    struct id{
        string name;
        string title;
        string description;
        string company;
    }
    mapping(address=>id) idInfos;

    function updateIdInfo(string memory _name, string memory _title, string memory _description, string memory _company) public {
        idInfos[msg.sender] = id(_name, _title, _description, _company);
    }
function getIdInfo() public view returns (string memory, string memory, string memory, string memory) {
        id memory user_id = idInfos[msg.sender];
        return (user_id.name, user_id.title, user_id.description, user_id.company);
    }
}