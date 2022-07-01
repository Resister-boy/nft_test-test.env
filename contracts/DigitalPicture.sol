// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC721/extensions/ERC721URIStorage.sol)

pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
/*
ERC20과 ERC721의 차이는 Token 자체에 소유자의 Adderss가 기입되었는가에 따라 달라짐. 
ERC20은 Token안에 소유자의 Address가 적혀있지 않기 때문에, 해당 지갑의 Address를 참조하여 소유권을 증명
But, ERC721의 경우 Token 자체에 소유자의 Address가 기업되어 있음. 
*/

contract DigitalPicture is ERC721URIStorage {
  using Counters for Counters.Counter;
  Counters.Counter private _tokenId;

  constructor() ERC721("LBToken", "NFT") {}

  // Web3.js
  function publishToken(address creator, string memory tokenURI) public returns(uint256) {
    _tokenId.increment();

    uint256 newTokenId = _tokenId.current();
    _mint(creator, newTokenId);
    _setTokenURI(newTokenId, tokenURI);

    return newTokenId;
  }
 }

