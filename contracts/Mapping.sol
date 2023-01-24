// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.16;

import "./Struct.sol";

contract Mapping is Struct {
    mapping(address => mapping(string => bool)) userAssetsMap; //used to track if a product exists for a particular user
    //mapping(address => string[]) userassets; // used to store product ids for a user
    mapping(string => Asset) assetMap;
    mapping(string => TraceInfo[]) supplyChain;
    mapping(string => string[]) packageMap;
}
