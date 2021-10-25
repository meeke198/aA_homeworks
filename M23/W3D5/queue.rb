class Queue
  attr_reader :stack
   def initialize
     @stacks = []
   end

   def enqueue(el)
     @stacks.push(el)
   end

   def dequeue
     @stacks.unshift
   end

   def peek
     @stack.first
   end
 end
