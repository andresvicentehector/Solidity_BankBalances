// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
import "contracts/Visibilidad.sol";

//en este contrato pueden verse todas las funciones de tipo internal de Visibilidad

contract HeredadoVisibilidad is Visibilidad{

uint public x= get_variable();

}