def binary_search_recursive (array, n)
  low = 0
  high = array.length - 1
  return false if low >= high
  mid = low + high / 2
  if n == array[mid]
    return true
  elsif n < array[mid]
    binary_search_recursive(array[low..mid], n)
  else
    binary_search_recursive(array[(mid+1)..high], n)
  end
end
