// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.5.0/utils/cryptography/MerkleProof.sol";

contract MyToken {
    bytes32 public root;

    bytes32 public a = "a";

    constructor(bytes32 _root){
        root = _root;
    }

    function isValid(bytes32[] memory proof, bytes32 leaf) public view returns (bool) {
        return MerkleProof.verify(proof, root, leaf);
    }
}
