require_relative 'node'

class OpenAddressing

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    address = index(key,@items.size)
    if @items[address] != nil
      address = self.next_open_index(address)
      if address == -1
        self.resize
        address = index(key,@items.size)
        address = self.next_open_index(address)
      end
    end
    @items[address] = Node.new(key,value)
  end

  def [](key)
    address = index(key, @items.length)
    while address != @items.length
      if @items[address].key == key
        return @items[address].value
      end
      address += 1
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    next_empty_index = index
    while @items[next_empty_index] != nil
      next_empty_index += 1
    end
    if next_empty_index == @items.size
      -1
    else
      next_empty_index
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
