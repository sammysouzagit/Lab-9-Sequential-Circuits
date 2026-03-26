# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Latches require a combinatorial loop which Verilog does not allow. In order to implement it, behavioral Verilog is used to describe the latch behavior and specifies the memory element of the latch as a reg.

### What is the meaning of always @(*) in a sensitivity block?
If there is a change to any input the always block will be reevaluted

### What importance is memory to digital circuits?
It enables a circuit to store data to be used in later instructions. For instance, with this circuit it enabled data to be sent over one of four different input paths then recalled using address select switches
