require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if root
      if root > node
        if root.left == nil
          root.left = node
        else
          insert(root.left, node)
        end
      else
        if root.right == nil
          root.right = node
        else
          insert(root.right, node)
        end
      end
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    if root
      if root.title != data
        if root.left
          find(root.left, data)
        else
          find(root.right, data)
        end
      else
        root
      end
    end
  end

  def delete(root, data)
    if root && data
      if root.title != data
        if root.left
          if root.left.title != data
            delete(root.left, data)
          else
            root.left = nil
          end
        else #root.right
          if root.right.title != data
            delete(root.right, data)
          else
            root.right = nil
          end
        end
      end
    end
  end

  # Recursive Breadth First Search
  def printf
    queue = [@root, @root.left, @root.right]
    #loop: print the first thing in the array, with what's
    #left, grab it's children, add them to queue
    while queue.size != 0
      puts "#{queue[0].title}: #{queue[0].rating}\n"
      queue.shift
      next_thing = queue[0]
      if next_thing != nil
        queue.push(next_thing.left) if next_thing.left
        queue.push(next_thing.right) if next_thing.right
      end
    end
  end
end
