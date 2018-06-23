require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @items = Array.new(size)
  end

  def []=(key, value)
    #test load factor here
    address = index(key,@items.size)
    if @items[address] == nil
      @items[address] = LinkedList.new(Node.new(key,value))
    #elsif @items[address].key != key
      #
    #elsif @items[address].value != value
      #
    end
  end

  def [](key)
    address = index(key,@items.size)
    if @items[address].head
      while @items[address].head.next
        #if key at the current link equals key
          #RETURN this link's value
          #@head = current.next
        #end
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
      if list != nil
        load += list.length
      end
    end
    load / size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

  # Resize the hash
  def resize
  end
end
