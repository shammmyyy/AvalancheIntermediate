// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract project {
    uint public display;

    function get(uint _set) external {
        
        require(_set != 10, "New value cannot be 10");
        assert(_set != 5); 
        
        if (_set == 3) {
            revert("New value cannot be 3");
        }

        display = _set;
    }
}
