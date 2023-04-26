pragma solidity ^0.8;

contract MergeSort {
    function sort(
        uint256[] memory data
    ) public pure returns (uint256[] memory) {
        if (data.length <= 1) {
            return data;
        }
        uint256 mid = data.length / 2;
        uint256[] memory left = new uint256[](mid);
        uint256[] memory right = new uint256[](data.length - mid);
        for (uint256 i = 0; i < mid; i++) {
            left[i] = data[i];
        }
        for (uint256 i = mid; i < data.length; i++) {
            right[i - mid] = data[i];
        }
        left = sort(left);
        right = sort(right);
        return merge(left, right);
    }

    function merge(
        uint256[] memory left,
        uint256[] memory right
    ) internal pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](left.length + right.length);
        uint256 i = 0;
        uint256 j = 0;
        uint256 k = 0;
        while (i < left.length && j < right.length) {
            if (left[i] <= right[j]) {
                result[k] = left[i];
                i++;
            } else {
                result[k] = right[j];
                j++;
            }
            k++;
        }
        while (i < left.length) {
            result[k] = left[i];
            i++;
            k++;
        }
        while (j < right.length) {
            result[k] = right[j];
            j++;
            k++;
        }
        return result;
    }
}
