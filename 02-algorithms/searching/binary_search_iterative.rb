def binary_search_iterative (array, n)
  low = 0
  high = array.length - 1
  while low < high
    mid = low + high / 2
    if n == array[mid]
      return true
    elsif n < array[mid]
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return false
end
