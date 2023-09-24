pragma solidity ^0.8.8;

import "../libraries/Suave.sol";

contract Intent {
    event OpenIntentSegment(uint64 intentId, bytes segmentData);
    event IntentSegmentSolved(uint64 intentId, bytes segmentData);

    function newIntent() external {
        require(Suave.isConfidential());

        bytes[] memory intentConfidentialData = fetchIntentConfidentialData();

        // loop over intentConfidentialData and call the standards validation method for each segment

        // if any segment is invalid, we revert

        // store new intent in confidential store at "intent:v0:active" with the following data:
        // - intentId
        // - intentConfidentialData
        // - currentSegmentIndex

        // if all segments are valid, emit OpenIntentSegment for the first segment
    }

    function newIntentSolution() external {
        require(Suave.isConfidential());

        // fetch intent from confidential store at "intent:v0:active"

        // if the intent doesn't exist, we revert

        // if the intent exists, we validate the solution by calling the intent standards validation method

        // if the solution is invalid, we revert

        // if the solution is valid, we need to either execute the action or if its just a DATA_TRIGGER we need to move onto the next segment.

        //  we emit IntentSegmentSolved for the current segment

        // we emit OpenIntentSegment for the next segment or if there is no next segment we emit IntentSolved
    }
}
