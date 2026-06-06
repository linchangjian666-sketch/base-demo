// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseNFT {
    string public name = "BaseDemoNFT";
    string public symbol = "BDN";
    uint256 public totalSupply;

    mapping(uint256 => address) public ownerOf;
    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    function mint() public {
        totalSupply++;
        ownerOf[totalSupply] = msg.sender;
        balanceOf[msg.sender]++;
        emit Transfer(address(0), msg.sender, totalSupply);
    }
}
