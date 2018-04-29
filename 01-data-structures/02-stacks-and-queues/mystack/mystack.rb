class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    @stack[@stack.length] = item
    self.top = item
  end

  def pop
    if !@stack.empty?
      item = self.top
      @stack = @stack[0...-1]
      self.top = @stack[-1]
      item
    else
      nil
    end
  end

  def empty?
    @stack.any? ? false : true
  end
end
