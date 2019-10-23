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

p bubble_sort([4, 3, 78, 2, 0, 2])
