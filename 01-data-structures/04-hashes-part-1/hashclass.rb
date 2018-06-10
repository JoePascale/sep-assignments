class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  #insertion method (mutator)
  def []=(key, value)
    address = index(key,@items.size)
    if @items[address] == nil
      @items[address] = HashItem.new(key,value)
    elsif @items[address].key != key
      self.resize
      self[key] = value
    elsif @items[address].value != value
      self.resize
      address = index(key,@items.size)
      @items[address] = HashItem.new(key,value)
    end
  end

  #lookup method (accessor)
  def [](key)
    @items[index(key,@items.size)].value
  end

  def resize
    copy_array = @items
    @items = Array.new(@items.size*2)
    copy_array.each do |e|
      unless e.nil?
        self[e.key] = e.value
      end
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # hashing based on strings, ascii value of each string is starting point
  def index(key, size)
    key.sum % size
  end

  # method to return the number of items in the hash
  def size
    @items.length
  end

end
