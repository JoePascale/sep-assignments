class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  #insertion method (mutator)
  #use key to figure out where to put @items
  #assign to that address the value where that gets put in
  def []=(key, value)
    @items[index(key,@items.size)] = value
  end

  #lookup method (accessor)
  #accessor - any function that returns a particular member of class (externally)
  def [](key)
    @items[index(key,@items.size)]
  end

  def resize
    #create new array & fill it with data from previous
    copy = @items
    #call insertion function, then insert function should call hashing function
    #[]=(nil, nil)
=begin
    @items.each do |e|
      copy << e
    end
=end
    #make temporary copy of array (@items), then move from old array to new
    #double sized array using insertion method
    @items = @items[(@items.length)*2]
    puts @items
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  #shouldn't modify anything about the class
  def index(key, size)
    total = 0
    key.each_byte do |c|
      total += c
    end
    total % size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

end
