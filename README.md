📝 NoteKing

A simple and transparent note-keeping smart contract built on Ethereum (Solidity).
Anyone can add public notes to the blockchain, making them immutable and publicly viewable.

Contract address :- 0xBD8A6E1481dBF2913f99Be4d4b6fB68168f1234a
Contract link :- https://celo-sepolia.blockscout.com/address/0xbd8a6e1481dbf2913f99be4d4b6fb68168f1234a

📖 Overview

NoteKing allows users to:

Add public text notes to the blockchain.

Retrieve notes individually or all at once.

Track the total number of notes stored.

Every note is stored on-chain, and each note addition triggers an event that records the author’s address and note text.

⚙️ Smart Contract Details

License: MIT
Solidity Version: ^0.8.0

Contract Name
NoteKing

Key Features
Function	Description
addNote(string memory _note)	Adds a new note to the blockchain and emits an event.
getNoteCount()	Returns the total number of notes stored.
getNote(uint256 _index)	Fetches a specific note by index.
getAllNotes()	Returns all notes (only suitable for small datasets).
📡 Events
NoteAdded

Emitted whenever a new note is added.

event NoteAdded(address indexed author, string note);


author: Address of the person who added the note

note: The text of the note

🧠 Example Usage
// Deploy the contract
NoteKing noteking = new NoteKing();

// Add a note
noteking.addNote("Blockchain is the future!");

// Get total notes
uint count = noteking.getNoteCount(); // returns 1

// Retrieve a note
string memory note = noteking.getNote(0); // "Blockchain is the future!"

// Get all notes
string[] memory allNotes = noteking.getAllNotes();

⚠️ Notes

All notes are public and permanent once stored on-chain.

The getAllNotes() function is not recommended for large datasets due to gas cost and memory limitations.

Best used for educational, demo, or small-scale projects.

🚀 Deployment

You can deploy NoteKing using:

Remix IDE

Hardhat

Truffle

Foundry

Example (Remix):

Open Remix IDE

Create a new file named NoteKing.sol

Paste the contract code

Compile using Solidity ^0.8.0

Deploy on a test network (e.g., Sepolia, Goerli, or Ganache)

🧾 License

This project is licensed under the MIT License — feel free to use, modify, and distribute it.
