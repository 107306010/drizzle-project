// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
pragma abicoder v2;

contract SimpleStorage {
    event StorageSet(string _message);

    uint256 public storedData = 0;

    struct TestStruct {
        uint256 subscribeAmount;//訂閱金額(新台幣)
        string test;
    }
    
    TestStruct teststruct;

    function set(uint256 x) public {
        storedData = x;
        teststruct = TestStruct(x,"Hi");
        emit StorageSet("Data stored successfully!");
    }

    function get() public view returns (uint) { 
        return storedData; 
    }
}
