require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    temp = @tail
    @tail = node
    @tail.next = temp
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    p @tail.next
    @tail = @tail.next
  end

  # This method prints out a representation of the list.
  def print
=begin
    @node.each do |node|
      p node
    end
=end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    #keep track of 2 temp variables: previous & current
    front = @head
    back = @tail
    #current = node
    middle = node
    #make sure previous node's next points to (node)
    #previous.next = node.next

    #set new head
    if @head = node
      @head = @head.next
    end
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    #add node to front of list
    @head = node
    current = @head
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    @head = @head.next
  end
end
