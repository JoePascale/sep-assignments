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
    current = @head
    puts current.data

    while (current = current.next)
      puts current.data
    end
  end


  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    current = @head
    if current == node
      @head = current.next
    elsif current.next == node
      @head.next = current.next.next
    elsif @tail == node
      @tail = current.next
    end
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
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
    @head = @head.next
  end
end
