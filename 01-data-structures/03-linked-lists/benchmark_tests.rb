require 'benchmark'
require_relative 'linked_list'

def check_array
  array = Array.new(10000)
  return array[4999]
end

def check_linked_list
  linked_list = LinkedList.new(10000)
  4999.times do
    linked_list.remove_front
  end
end

def delete_from_array
  array = Array.new(10000)
  array.delete(4999)
end

def delete_from_linked_list
  linked_list = LinkedList.new(10000)
  4999.times do
    linked_list.delete(@head)
  end
end

Benchmark.bm do |x|
  x.report("array:") { Array.new(10000) }
  x.report("linked list:") { LinkedList.new(10000) }
end

Benchmark.bm do |x|
  x.report("check array:") { check_array }
  x.report("check linked list:") { check_linked_list }
end

Benchmark.bm do |x|
  x.report("remove from array:") { delete_from_array }
  x.report("remove from linked list:") { delete_from_linked_list }
end
