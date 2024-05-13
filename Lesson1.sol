// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdminChallenge{

        address public  admin;

        constructor(){
        admin = msg.sender;
    }

     modifier Admin { 
        require (admin == msg.sender, "admin only can access");
        _;
    }


}
