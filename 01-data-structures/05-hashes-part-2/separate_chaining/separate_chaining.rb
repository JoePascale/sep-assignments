require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @items = Array.new(size)
  end

  #insertion method
  def []=(key, value)
    self.resize if self.load_factor > @max_load_factor
    address = index(key,@items.size)
    if @items[address] == nil
      @items[address] = LinkedList.new
    end
    @items[address].add_to_tail(Node.new(key,value))
  end

  #lookup method
  def [](key)
    address = index(key,@items.size)
    if @items[address] != nil
      while @items[address].head.next
        if @items[address].head.key == key
          @items[address].head.value
        else
          @items[address].head = @items[address].head.next
        end
      end
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Calculate the current load factor
  def load_factor
    load = 0
    @items.each do |list|
      unless list == nil
        load += list.length
      end
    end
    load / self.size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
  #calculate the new index
  #for every element in your old array to put them in the new, larger array
  def resize
    copy_array = @items
    @items = Array.new(@items.size*2)
    copy_array.each do |list|
      current_node = @head
      while current_node != nil
        @items[current_node.key] = current_node.value
        current_node = current_node.next
      end
    end
  end
end
