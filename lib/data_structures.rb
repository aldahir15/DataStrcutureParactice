# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  arr.max - arr.min
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr)
  if arr == arr.sort
    true
  else
    false
  end
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  new_str = str.downcase
  vowels = ["a", "e", "i", "o", "u"]
  count = 0
  new_str.chars.each{|x| count += 1 if vowels.include?(x)}
  count
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  new_str = str.downcase
  new_word = ""
  vowels = ["a", "e", "i", "o", "u"]
  new_str.chars.each{|x|
    if vowels.include?(x)
    else
      new_word += x
    end
  }
  new_word
end


# HARD

# Write a method that returns the returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  int.to_s.split("").sort.reverse
end

# Write a method that returns a boolean indicating whether a string has
# repeating letters. Capital letters count as repeats of lowercase ones, e.g.,
# repeating_letters?("Aa") => true
def repeating_letters?(str)
  new_str = str.downcase
  if new_str.split("") == new_str.split("").uniq
    return false
  else
    return true
  end
end

# Write a method that converts an array of ten integers into a phone number in
# the format "(123) 456-7890".
def to_phone_number(arr)
  "(#{arr[0..2].join}) #{arr[3..5].join}-#{arr[6..9].join}"
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  new_arr = str.split(",")
  int_arr = []
  new_arr.each{|x| int_arr << x.to_i}
  int_arr.max - int_arr.min
end


#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1)
  if offset < 0
    offset = arr.length - offset.abs
  elsif offset > arr.length
    offset = offset % arr.length
  end
  offset_values = arr.take(offset)
  keep_values = arr.drop(offset)
  keep_values << offset_values
  keep_values.flatten
end
