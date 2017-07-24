require File.expand_path("../initialize.rb", __FILE__)

fileinput = File.open(InputFile)    
fileoutput = File.open(OutputFile)   

first_line = fileinput.readline                          
pond = Pond.new(first_line)                 # Initialize pond object

while !fileinput.eof?

  initial_position = fileinput.readline  
  instructions = fileinput.readline
                                                  # Initialize the duck with the -
  duck = Duck.new(initial_position, pond)   	 # - initial poistion on the pond
  duck.explore(instructions)                     # Ask it to explore according to the instructions 

  fileoutput.write "#{duck.position_and_direction}\n"
end

fileoutput.close
fileinput.close