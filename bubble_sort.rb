def bubble_sort(unsordetArray)
  for i in 0...unsordetArray.size
    for x in 0...unsordetArray.size - 1
      firstElment = unsordetArray[x]
      secondElment = unsordetArray[x + 1]

      if (secondElment < firstElment)
        tempvariable = unsordetArray[x]
        unsordetArray[x] = unsordetArray[x + 1]
        unsordetArray[x + 1] = tempvariable
      end
    end
  end

  return unsordetArray
end

def bubble_sort_by(arr)
  for i in 0...arr.size
    for i in 0...arr.size-1
      comparison = yield(arr[i], arr[i + 1])
      if comparison > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
  return arr
end

p bubble_sort_by([4, 3, 78, 2, 0, 2]) { |left, right| right - left }

# p bubble_sort([4, 3, 78, 2, 0, 2])
