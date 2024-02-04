// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Funder{
    uint public numOfFunders ;

    mapping (uint => address) private funders ;

    receive() payable external {} // his built-in function allows the smart contract to receive ether just like a regular user account controlled by a private key would. 

    function transfer() external payable {
        funders[numOfFunders] = msg.sender ;
    }

    function withdraw(uint256 withdrawAmount) external{
        require(withdrawAmount <= 2000000000000000000,"can not withdraw more than 2 ether") ;
        payable(msg.sender).transfer(withdrawAmount) ;
    }
    
}