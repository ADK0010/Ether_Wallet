// SPDX-License-Identifier:MIT 
pragma solidity ^0.8.17;

contract EtherWallet{

address payable public Owner;

constructor(){
    Owner = payable(msg.sender);
}
receive() payable external{

} 

function withdraw(uint256 _amount) external{
    require(msg.sender == Owner, "Not Owner");
    payable(msg.sender).transfer(_amount);
} 
function getBalance() view external returns(uint){
    return address(this).balance;
}

}