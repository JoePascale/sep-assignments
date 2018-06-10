require 'pry'

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  #insertion method (mutator)
  #use key to figure out where to put @items
  #assign to that address the value where that gets put in
  def []=(key, value)
    address = index(key,@items.size)
    p value
    p address
    p @items[address]
    if @items[address] == nil
      @items[address] = HashItem.new(key,value)
      #p @items[address]
    elsif @items[address] == value
      #p @items[address]
    elsif @items[address] != value
      resize()
      address = index(key,@items.size)
      @items[address] = HashItem.new(key,value)
      #p @items[address]
    end
  end

  #lookup method (accessor)
  #accessor - any function that returns a particular member of class (externally)
  def [](key)
    @items[index(key,@items.size)].value
  end

  #make temporary copy of array (@items), then move from old array to new
  #double size array using insertion method
  def resize
    #create new array & fill it with data from previous
    copy_array = @items
    @items = Array.new(@items.size*2)
    #call insertion function, then insert function should call hashing function
    copy_array.each do |e|
      unless e.nil?
        self[e.key] = e.value
      end
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

end
