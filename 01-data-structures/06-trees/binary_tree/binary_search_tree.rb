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
    #use recursion, not while loops
    #compare roots value with node value,
    #first param is what subtree I'm concerned with
    #if node is less than, insert in left tree
    #when no left or right child, insert node as value
  end

  # Recursive Depth First Search
  def find(root, data)
    #similar to insert method
    #keep looking down the tree to compare nodes
  end

  def delete(root, data)
  end

  # Recursive Breadth First Search
  def printf(children=nil)
    #could possibly create an array that keeps
    #elements in queue & removes ones that have
    #already been printed
  end
end
