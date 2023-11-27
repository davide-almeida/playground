def binary_search(array, start_index, end_index, element)
  middle_index = (start_index + end_index) / 2

  if array[middle_index] == element
    return middle_index
  end

  if start_index == end_index
    return nil
  else
    if array[middle_index] < element
      binary_search(array, middle_index + 1, end_index, element)
    else
      binary_search(array, start_index, middle_index - 1, element)
    end
  end
end
# 1. O array tem que estar ordenado

# Queremos o 5 - start_index = 0, end_index = 4
# [1, 2, 3, 4, 5] - middle_index = 2 -> array[middle_index] = 3
#
# Queremos o 5 - start_index = 3, end_index = 4
# [1, 2, 3, 4, 5] - middle_index = 3 -> array[middle_index] = 4
#
# Queremos o 5 - start_index = 4, end_index = 4
# [1, 2, 3, 4, 5] - middle_index = 4 -> array[middle_index] = 5
# Conseguimos o 5

# O(log n)

array = [1, 2, 3, 4, 5]
p binary_search(array, 0, array.length, 5)