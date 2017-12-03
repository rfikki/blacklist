pragma solidity ^0.4.17;

import "./BlacklistInterface.sol";

contract ENS {

    BlacklistInterface public blacklist;

    modifier onlyWhenNotBlacklisted(bytes32 node) {
        require(!blacklist.isBlacklisted(node));
        _;
    }

    function ENS(BlacklistInterface _blacklist) public {
        blacklist = _blacklist;
    }

}
