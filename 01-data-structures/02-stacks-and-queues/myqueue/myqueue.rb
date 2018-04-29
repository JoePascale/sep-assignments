class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
  end

  def enqueue(element)
    @tail = element
    @queue.empty? ? @head = element : @head = @queue[0]
    @queue[0] = element
  end

  def dequeue
    @head = @queue[1]
    @queue = @queue[1...-1]
  end

  def empty?
    @queue.any? ? false : true
  end
end
