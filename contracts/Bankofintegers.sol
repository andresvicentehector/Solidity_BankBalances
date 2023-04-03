// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

//with this contract, an adress might do the tipical transacts of a bank
//enter some amount to its account
//get the balance
//transfer the balance to a other account 

//internally, there is a record of the transactions made


contract BankOfIntegers{

mapping(address=>uint) private balance;

event Transfer(address _from ,address _to, uint _amount);


function addBalance(uint _amount ) external returns (uint){

balance[msg.sender] =balance[msg.sender] + _amount;

return getBalance();

}

function getBalance() public view returns (uint){

return balance[msg.sender];

}

function _transfer(address _sender, address _receiber, uint _amount ) private  {

if(balance[_sender]>=_amount){
    
    balance[_sender]-=_amount;
    balance[_receiber]= balance[_receiber]+_amount;
    emit Transfer( _sender, _receiber, _amount);
    }





}

function transfer(address _receiber, uint _amount ) public  returns (uint) {

_transfer(msg.sender, _receiber, _amount);
return balance[msg.sender];

}



}