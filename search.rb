def linear_search(list_to_search, value_to_find)
  list_to_search.each_with_index do |current_value, current_index|
    return current_index if current_value == value_to_find
  end
end

def binary_search(list_to_search, value_to_find)
  low = 0
  high = list_to_search.length - 1
  until low == high
    list_length = high - low
    midpoint = low + (list_length / 2)
    return midpoint if list_to_search[midpoint] == value_to_find
    if list_to_search[midpoint] < value_to_find
      low = midpoint + 1
    else
      high = midpoint - 1
    end
  end
  nil
end

def binary_recursive_search(list_to_search, value_to_find)
  if list_to_search.length == 1
    list_to_search.first == value_to_find
  else
    midpoint = (list_to_search.length / 2)
    if value_to_find == list_to_search[midpoint]
      return true
    elsif list_to_search[midpoint] < value_to_find
      midpoint += 1
      binary_recursive_search(list_to_search[midpoint..-1], value_to_find)
    else
      midpoint -= 1
      binary_recursive_search(list_to_search[0..midpoint], value_to_find)
    end
  end
end
