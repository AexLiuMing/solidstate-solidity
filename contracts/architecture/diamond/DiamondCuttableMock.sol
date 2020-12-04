// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

import '../../access/LibOwnable.sol';
import './DiamondBase.sol';
import './DiamondCuttable.sol';

contract DiamondCuttableMock is DiamondBase, DiamondCuttable {
  constructor () {
    LibOwnable.layout().owner = msg.sender;
  }
}