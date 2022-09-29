pragma solidity ^0.8.0;

import "../VaultBasic.sol";

contract Spec {

    VaultBasic immutable vault;
//    VaultBasic immutable vault2;

    constructor() public {
        vault = new VaultBasic();
//        vault2 = new VaultBasic();
    }

    function withdraw() public {
        vault.withdraw(vault.balance(address(this)));
//        vault2.withdraw(vault2.balance(address(this)));
    }

    receive() external payable {}

}
