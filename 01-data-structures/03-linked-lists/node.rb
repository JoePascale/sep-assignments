class Node
  attr_accessor :next
  attr_accessor :data

  def initialize(data)
    @data = data
    #need something like @next = Node.next
    @next
  end
end
