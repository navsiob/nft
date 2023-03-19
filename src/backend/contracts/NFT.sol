// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

/// @dev Initializes the contract by setting its name and symbol.
contract NFT is ERC721URIStorage {
    uint public tokenCount;
    constructor() ERC721("DApp NFT", "DAPP"){}
    
    /// @dev Creates a new NFT and mints it to the caller's address.
    /// @param _tokenURI The metadata URI of the new NFT.
    /// @return The ID of the newly minted NFT
    
    function mint(string memory _tokenURI) external returns(uint) {
        tokenCount ++;
        _safeMint(msg.sender, tokenCount);
        _setTokenURI(tokenCount, _tokenURI);
        return(tokenCount);
    }
}