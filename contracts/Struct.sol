// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.16;

contract Struct {
    struct FunctionAsset {
        string Id;
        string MetaData;
    }

    struct Asset {
        string Id;
        string MetaData;
        string ParentId; //Reference id of package, carton, container. At the time of creation, it will be an empty string.
        address Owner;
        address OutwardedTo;
        State state;
    }

    string[] assetIdList;

    struct FunctionTraceInfo {
        address owner; //If not provided at creation, msg.sender will be set as default owner.
        string location;
        string comment;
    }

    struct TraceInfo {
        address holderAddress;
        uint256 time;
        string invoiceHash; //At the time of creation it will be empty string.
        string invoiceNum; //At the time of creation it will be empty string.
        string location;
        string comment;
    }

    enum State {
        MANUFACTURED,
        INTRANSIT,
        STORAGE,
        ENDUSER,
        DISCARDED,
        REPACKAGED
    }

    enum Type {
        UNIT,
        PACKAGE
    }

    enum FunctionType {
        OUTWARD,
        INWARD,
        SOLD
    }

    struct TypeList {
        Type _type;
        string[] IdList;
    }

    struct FunctionChaneOwnershipArgs {
        FunctionType functionType;
        TypeList type_list;
        address receiverAdd;
        address logisticAdd; //It should set be address(0) by default for SOLD method.
        string invoiceHash;
        string invoiceNum;
    }
}
