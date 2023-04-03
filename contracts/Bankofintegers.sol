// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

//with this contract, an adress might do the tipical transacts of a bank
//enter some amount to its account
//get the balance
//transfer the balance to a other account 

//internally, there is a record of the transactions made


contract BankOfIntegers{

mapping(address=>uint) private balance;



function addBalance(uint amount ) external returns (uint){

balance[msg.sender] =balance[msg.sender] + amount;

return getBalance();

}

function getBalance() public view returns (uint){

return balance[msg.sender];

}

function transferBalance(address receiber, uint amount ) public  {

balance[receiber]= balance[receiber]+amount;

}


}