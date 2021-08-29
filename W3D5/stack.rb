class Stack
  attr_reader :stack
   def initialize
     @stacks = []
   end

   def push(el)
     @stacks.push(el)
   end

   def pop
     @stacks.pop
   end

   def peek
     @stack.last
   end
 end
