// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Brutesort {
    //uint256[] a = [120112,555,33,1,404,55,777,99,928];

    // Did it for practice of swapping without third variable
    function swap(
        uint256 A,
        uint256 B
    ) internal pure returns (uint256, uint256) {
        A = A + B;
        B = A - B;
        A = A - B;
        return (A, B);
    }

    function sort(
        uint256[] memory data
    ) public pure returns (uint256[] memory) {
        uint256[] memory dataStg = data;
        uint256 len = dataStg.length;
        for (uint256 i = 1; i < len; i++) {
            for (uint256 j = 1; j < len; j++)
                if (dataStg[j] < dataStg[i]) {
                    (dataStg[j], dataStg[i]) = swap(dataStg[j], dataStg[i]);
                }
        }
        return dataStg;
    }
}
