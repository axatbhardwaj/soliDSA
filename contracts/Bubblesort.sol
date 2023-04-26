pragma solidity ^0.8;

contract BubbleSort {
    function sort(
        uint256[] memory data
    ) public pure returns (uint256[] memory) {
        uint256 len = data.length;
        bool swapped = true;
        for (uint256 i = 0; i < len - 1 && swapped; i++) {
            swapped = false;
            for (uint256 j = 0; j < len - i - 1; j++) {
                if (data[j] > data[j + 1]) {
                    (data[j], data[j + 1]) = (data[j + 1], data[j]);
                    swapped = true;
                }
            }
        }
        return data;
    }
}
