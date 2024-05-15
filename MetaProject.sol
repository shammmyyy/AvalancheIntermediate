//SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract FunctionAndError {
    uint Assert;
    uint Require;
    uint Revert;
    uint public DefaultValue ;
    address public Admin;
 
    constructor(address MainAdmin, uint _DefaultValue){
        DefaultValue = _DefaultValue;
        Admin = MainAdmin;
    }

    modifier _MainAdmin{
        require (Admin == msg.sender, "unlocate address please try again!");
        _;
    }

     function SetUpValue(uint _Assert, uint _Require, uint _Revert) public _MainAdmin{
        Assert = _Assert;
        Require = _Require;
        Revert = _Revert;
    }

    function Asserted() public view _MainAdmin {
       if(Assert == 0){
            revert("Please Enter a value");
       }else{
            assert(Assert != DefaultValue);
       }
    }

    function Required() public view _MainAdmin {
        if(Require == 0){
            revert("Please Enter a value");
       }else{
            require(Require <= DefaultValue, "Required Value is cannot be used, try another value");
       }
    }

    function Reverted() public view _MainAdmin {
        if(Require == 0){
            revert("Please Enter a value");
        }else if(Revert <= DefaultValue){
            revert("Revert Value is cannot be used, try another value");
        }else{

        }
    }
}

