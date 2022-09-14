//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

//like class -> we use contract
contract Transaction {
    uint256 transactionCount;

    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        //type -> name of prop
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keywords;
    }

    TransferStruct[] transaction;

    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCount += 1;
        //msg is always there in the blockchain

        //pushing it in
        transaction.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        //storing it
        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transaction;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
