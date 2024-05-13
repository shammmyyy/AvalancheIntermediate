// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Math {

    function sum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
    

    function minus(uint256 c, uint256 d) public pure returns (uint256) {
        return c - d;
    }
    

    function times(uint256 e, uint256 f) public pure returns (uint256) {
        return e * f;
    }
    

    function divide(uint256 g, uint256 h) public pure returns (uint256) {
        require(h != 0, "Divide by zero");
        return g / h;
    }
}
