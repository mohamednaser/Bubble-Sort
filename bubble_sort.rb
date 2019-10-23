def bubble_sort(unsordet_array)
  # method to sort an array useing Bubble Sort Algorithem
  unsordet_array.size.times do
    (0...unsordet_array.size - 1).each do |x|
      first_elment = unsordet_array[x]
      second_elment = unsordet_array[x + 1]

      if (second_elment < first_elment)
        temp_variable = unsordet_array[x]
        unsordet_array[x] = unsordet_array[x + 1]
        unsordet_array[x + 1] = temp_variable
      end
    end
  end
  return unsordet_array
end

def bubble_sort_by(arr)
  # method to sort an array useing Block aproach
  arr.size.times do
    (0...arr.size - 1).each do |i|
      comparison = yield(arr[i], arr[i + 1])
      if comparison > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
  return arr
end

p bubble_sort_by([5, 2, 1, 6, 7]) { |left, right| left - right }
