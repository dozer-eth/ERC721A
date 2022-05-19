// SPDX-License-Identifier: MIT
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import './ERC721ABurnableMock.sol';
import './StartTokenIdHelper.sol';

contract ERC721ABurnableStartTokenIdMock is StartTokenIdHelper, ERC721ABurnableMock {
    constructor(
        string memory name_,
        string memory symbol_,
        uint256 startClaimTokenId_,
        uint256 startMintTokenId_
) StartTokenIdHelper(startClaimTokenId_, startMintTokenId_) ERC721ABurnableMock(name_, symbol_) {}

    function _startMintTokenId() internal view override returns (uint256) {
        return startMintTokenId;
    }

    function _startClaimTokenId() internal view override returns (uint256) {
        return startClaimTokenId;
    }
}
