// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract newMyToken {
    string public nwTokenName = "NEWNAME";
    string public nwTokenAbbrv = "NEWABBRV";
    uint public nwTotalValue = 1000;

    mapping(address => uint) public nwbalances;

    function nwmint(address _address, uint _value) public {
        nwTotalValue += _value;
        nwbalances[_address] += _value;
    }

    function nwburn(address _address, uint _value) public {
        if (nwbalances[_address] >= _value) {
            nwTotalValue -= _value;
            nwbalances[_address] -= _value;
        }
    }
}
