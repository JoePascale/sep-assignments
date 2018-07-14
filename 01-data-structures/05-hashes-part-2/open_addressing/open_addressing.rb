require_relative 'node'

class OpenAddressing
  
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    address = index(key,@items.size)
    while @items[address] != nil
      address = self.next_open_index
      if @items[address] == @items.last
        self.resize
        address = index(key, @items.size)
        @items[address] = Node.new(key,value)
        p @items[address]
      end
    end
    #@items[address] = Node.new(key, value)
  end

  def [](key)
    @items[index(key,@items.size)]
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    @items.each do |node|
      if node != nil
        node = node.next
      end
    end
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
  def resize
    copy_array = @items
    @items = Array.new(@items.size*2)
    copy_array.each do |e|
      unless e.nil?
        self[e.key] = e.value
      end
    end
  end
end
