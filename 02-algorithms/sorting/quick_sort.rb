def quick_sort(pivot, arr)
  new_arr = [pivot]
  arr.each do |e|
    if e > pivot
      new_arr << e
    end
  end
end
