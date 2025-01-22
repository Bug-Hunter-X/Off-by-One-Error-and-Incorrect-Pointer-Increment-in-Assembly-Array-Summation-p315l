# Assembly Array Summation Bug

This repository demonstrates a common bug in assembly language programming related to array processing: an off-by-one error and incorrect pointer incrementation. The bug leads to an inaccurate calculation of the sum of elements in an array.

## Bug Description
The assembly code attempts to calculate the sum of elements in a word array. However, it contains two errors:

1. **Off-by-One Error:** The loop counter (`ecx`) is initialized to the array length in *bytes*, but the loop iterates through words.  This leads to one less word being processed. 
2. **Incorrect Pointer Increment:** The pointer (`esi`) is incremented in steps of 2 bytes (`edi`), which is correct. However, the initial problem with the loop counter makes this adjustment ineffective in fully mitigating the error.

## Solution
The solution corrects these errors by initializing the loop counter with the number of *words* in the array and ensuring that the addition operation correctly sums all the words in the array within the loop.