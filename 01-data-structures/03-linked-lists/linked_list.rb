require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if @head == nil
      @head = node
    end
    if @tail
      @tail.next = node
      @tail = node
    else
      @tail = node
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    current = @head
    last = @tail
    if @head == @tail
      @head = nil
      @tail = nil
      return
    end
    while current.next != last
      current = current.next
    end
    @tail.next = nil
    @tail = current
  end

  # This method prints out a representation of the list.
  def print
    list = []
    current = @head
    while current.next != nil
      list << current
      current = current.next
    end
    list << current
  end


  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    #keep track of 2 temp variables: previous & current
    current = @head
    #next_node = @head.next
    previous = nil

    #if @head is node to be deleted, set new head
    #if @head == node
      #@head = current.next
    #else
=begin
      while (current.next != nil) && (current.next.node != node)
        current = current.next
      end
      unless current.next == nil
        current.next = current.next.next
      end
=end
    #end
    #make sure previous node's next points to (node)
    #previous.next = current.next
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    #add node to front of list
    if @head != nil
      current = @head
      @head = node
      @head.next = current
    else
      @head = node
    end
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    #need temp variable here to store for multiple add_to_front calls
    #new_front = @head
    @head = @head.next
    #front
  end
end
