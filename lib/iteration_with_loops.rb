def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays

  idx = 0
  newArray = []
  
  while idx < src.length do 
    inner_idx = 0
    inner_array = src[idx]
    min = inner_array[0]
    
    while inner_idx < inner_array.length do 
      currentNum = inner_array[inner_idx]
      
      if currentNum < min 
        min = currentNum
      end
      inner_idx += 1
    end 
    newArray.push(min)
    idx += 1
  end 
  newArray
end