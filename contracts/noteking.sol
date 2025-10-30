// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title NoteKing
 * @dev A simple note-keeping contract where anyone can store public notes.
 */
contract NoteKing {
    // Array to store all notes
    string[] private notes;

    // Event emitted whenever a new note is added
    event NoteAdded(address indexed author, string note);

    /**
     * @dev Add a new note to the blockchain.
     * @param _note The text of the note to store.
     */
    function addNote(string memory _note) public {
        notes.push(_note);
        emit NoteAdded(msg.sender, _note);
    }

    /**
     * @dev Get the total number of notes.
     */
    function getNoteCount() public view returns (uint256) {
        return notes.length;
    }

    /**
     * @dev Retrieve a note by its index.
     * @param _index The index of the note.
     */
    function getNote(uint256 _index) public view returns (string memory) {
        require(_index < notes.length, "Note does not exist");
        return notes[_index];
    }

    /**
     * @dev Retrieve all notes (for small datasets; not ideal for large ones).
     */
    function getAllNotes() public view returns (string[] memory) {
        return notes;
    }
}
