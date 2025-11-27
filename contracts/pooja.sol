// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
   A very simple Credit History contract.
   - The person who deploys the contract becomes the owner.
   - The owner can add credit records for any user.
   - Anyone can view the credit history of a user.
*/
contract CreditHistory {

    // The person who deployed the contract
    address public owner;

    // A single credit entry for a user
    struct CreditEntry {
        uint256 score;        // Example: 600, 720, etc.
        string info;          // What happened: "Paid loan", "Missed EMI"
        uint256 time;         // When it was added
    }

    // Each user's address → list of their credit entries
    mapping(address => CreditEntry[]) private userHistory;

    // The deployer becomes the owner automatically (no inputs needed)
    constructor() {
        owner = msg.sender;
    }

    // A simple check so only the owner can add records
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can do this");
        _;
    }

    /*
       Add a new credit entry for a user.
       Only the owner is allowed to call this.
    */
    function addCredit(address user, uint256 score, string calldata info)
        external
        onlyOwner
    {
        userHistory[user].push(
            CreditEntry({
                score: score,
                info: info,
                time: block.timestamp
            })
        );
    }

    /*
       Get how many credit entries a user has.
       Example: returns 3 if the user has 3 records.
    */
    function getEntryCount(address user) external view returns (uint256) {
        return userHistory[user].length;
    }

    /*
       Get one specific credit entry using its index.
       Example: getEntry(user, 0) → first record
    */
    function getEntry(address user, uint256 index)
        external
        view
        returns (
            uint256 score,
            string memory info,
            uint256 time
        )
    {
        CreditEntry memory entry = userHistory[user][index];
        return (entry.score, entry.info, entry.time);
    }
}
