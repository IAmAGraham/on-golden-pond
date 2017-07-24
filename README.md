## Problem

You are writing a simulation of ducks on a curiously rectangular pond. A duck’s position and 
location is represented by a combination of x and y co-ordinates and a letter representing 
one of the four cardinal compass points. The pond is divided up into a grid to simplify 
navigation. An example position might be 0, 0, N, which means the duck is in the bottom 
left corner and facing North.

In order to control a duck, you send a simple string of letters. The possible letters 
are 'P', 'S' and 'F'. 'P' and 'S' makes the duck spin 90 degrees toward port side (left) 
or starboard (right) respectively, without moving from its current spot. 'F' means move 
forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

## Input

The first line of input is the upper-right coordinates of the pond, the lower-left 
coordinates are assumed to be 0,0. 

The rest of the input is information pertaining to the ducks being simulated. Each duck 
has two lines of input. The first line gives the duck's position, and the second line 
is a series of instructions telling the duck how to explore the pond.

The position is made up of two integers and a letter separated by spaces, corresponding 
to the x and y co-ordinates and the duck’s orientation.

Each duck will be finished sequentially, which means that the second duck won't start to move until the first one has finished moving.

Output
The output for each duck should be its final co-ordinates and heading.

## Input and Output

#### Test Input 							
* 5 5 								 
* 1 2 N 								
* PFPFPFPFF

* 3 3 E
* FFSFFSFSSF

#### Expected Output
* 1 3 N
* 5 1 E 


## Solution
	 
./ongoldenpond.rb
Takes duck input data from input file and writes the output (final positions and directions of all ducks)
to the output file.
	input: inputoutput/ducks.input
	input: inputoutput/ducks.output



## Code Description

ongoldenpond.rb: 
ruby script that gets the functionality executed by using necessary classes and files

initialize.rb: 
Initializes the application by loading all the class files, and setting input/output constants

lib: contains class definitions 
 + duck.rb
 + position.rb
 + direction.rb
 + pond.rb

inputoutput: contains the input and output files
 + ducks.input
 + ducks.ouput
