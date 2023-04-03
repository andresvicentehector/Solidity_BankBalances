// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract Visibilidad {
uint8 public  variable =2;
uint8 private variablePriv=3;
uint8 variableUndefined=4;

uint8 private x=100;


//las funciones private solo se pueden acceder desde dentro de los contratos o de sus contratos heredados
function get_variableUndefined() private  view returns (uint8){

    return variableUndefined;


}



function get_variable() public view returns (uint8){

    return get_variableUndefined();


}

//las funciones public gastan diferentes tipos de Gas dependiendo si pueden accederse Internal, external o public(desde donde sea)

function get_x_public() internal  view returns (uint8){ //infinite gas
    return x;
}
function get_x_external() external view returns (uint8){ //2551 gas
    return x;
}

function get_x_internal() public view returns (uint8){ //2507 gas
    return x;
}

//las funciones pure no pueden utilizar variables del sistema, pero sí variables externas

function get_suma (uint8 val1, uint8 val2) public pure returns(uint8){
 uint8 y =val1+val2;
    return y;
}





}