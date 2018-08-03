class Node
  attr_accessor :title
  attr_accessor :rating
  attr_accessor :left
  attr_accessor :right

  def initialize(title, rating)
    @title = title
    @rating = rating
  end

  def >(node)
    #compare self instance & other instance
    if self.rating > node.rating
      return true
    end
  end
=begin
  def <(node)
    if self.rating < node.rating
      return true
    end
  end
=end
end
