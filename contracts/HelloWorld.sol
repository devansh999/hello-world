//SPDX-License-Identifier: MIT

pragma solidity >= 0.7.3;

contract HelloWorld {
    event UpdatedMessages(string oldstr, string newstr);

    string public message;

    constructor (string memory initmessage) {
        message = initmessage;
    }

    function update(string memory newMessage) public {
        string memory oldMsg = message;
        message = newMessage;
        emit UpdatedMessages (oldMsg, newMessage);

    }
}
