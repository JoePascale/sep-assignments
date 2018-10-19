def improving_complexity_v1(*arrays)
  combined_array = []
  arrays.each do |array|
    #removed extraneous loop to combine arrays
    #added combine assignment operator to append arrays
    combined_array += array
  end

  #removed sorted_array length logic & declared as empty array
  sorted_array = []

  #this block needs updating, nested loop, compare all values to i, sort based on that

  #SHOULD I DO INSERTION SORT OR QUICKSORT??  I THINK DO INSERTION SORT FIRST,
  #THEN REFACTOR IN VERSION 2 TO A MERGE SORT, refer to this insertion sort:
  #https://www.cs.cmu.edu/~adamchik/15-121/lectures/Sorting%20Algorithms/sorting.html

  #removed for loop & added each loop, it would've returned original collection if not
  combined_array.each do |e|
    i = 0
    while i < sorted_array.length
      if e < sorted_array[i]
        sorted_array.insert(i, val)
        #removed break
      elsif i == sorted_array.length - 1
        sorted_array << e
        #removed break
      end
      i+=1
    end
  end

  sorted_array
end
