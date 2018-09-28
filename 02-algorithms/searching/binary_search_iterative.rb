#params
#search method
#container
#what return value do I need?

#array must be sorted in this case
def binary_search (array, n)
  #change low, mid & high within while loop
  low = 0
  high = array.length-1
  mid = (array.size / 2).to_i
  subarray = array.slice(low..mid)
  while subarray.length > 2 #change this line from lower_half.length to "subarray", assign subarray inside the loop
    if n = array[mid]
      return true
    elsif n < array[mid]
      subarray = array.slice(low..mid)
    else
      subarray = array.slice(mid..high)
    end
  end
end
