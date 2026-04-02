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
Sammy Souza
Eric Harris

## Summary
For starters, we built our first sequential circuit: the D latch. We completed this by using a switch for
our data input, and a button as an enable. This allows us to store 1 bit of data by controlling the button.
Next, we expanded on this idea by making a 4 bit memory system. To do this, we used 2 demultiplexers, one 
controlled by a button and the other controlled 8 data bits with switches 6 and 7 as our address for accessing
our storage. The output of these demultiplexers then passed as D and enable for 4 D latches. The output of these 
D latches then passes to a 4-1 MUX with the same switches as selectors for this MUX to then output corresponding 
LEDS for our stored four bytes. 

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Latches require a combinatorial loop which Verilog does not allow. In order to implement it, behavioral Verilog is used to describe the latch behavior and specifies the memory element of the latch as a reg.

### What is the meaning of always @(*) in a sensitivity block?
If there is a change to any input the always block will be reevaluted

### What importance is memory to digital circuits?
It enables a circuit to store data to be used in later instructions. For instance, with this circuit it enabled data to be sent over one of four different input paths then recalled using address select switches
