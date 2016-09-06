# Release 0 - Implement a Simple Search

def simple_search(num_array, search_integer)
  idx = 0

  while idx < num_array.length
    if num_array[idx] == search_integer
      return idx
    elsif idx == num_array.length
      nil
    else
      idx += 1
    end
  end
end

# arr = [42, 89, 23, 1]
# p simple_search(arr, 1)

# p simple_search(arr, 50)

# Release 1 - Calculate Fibonacci Numbers

def fibonacci_calculator(num)
  fib_arr = []


  if num == 0
    fib_arr = []
    return fib_arr
  elsif num == 1
    fib_arr = [0]
    return fib_arr
  elsif num == 2
    return fib_arr = [0,1]
  else
    fib_arr = [0,1]
  end

  while fib_arr.length < num
    fib_arr[fib_arr.length ] = fib_arr[-1] + fib_arr[-2]
  end

  return fib_arr
end

# p fibonacci_calculator(0)
# p fibonacci_calculator(1)
# p fibonacci_calculator(2)
# p fibonacci_calculator(3)
# p fibonacci_calculator(4)
# p fibonacci_calculator(100)

# Release 2 - Sort an Array using a sorting method

def bubble_sort_test(num_arr)

  loop do
    switched_numbers = false

    0.upto(num_arr.size-2) do |idx|
      if num_arr[idx] > num_arr[idx+1]
        temp = num_arr[idx]
        num_arr[idx] = num_arr[idx+1]
       num_arr[idx+1] = temp
        switched_numbers = true
      end
    end
    break unless switched_numbers
  end
  num_arr
end

# test_num_arr = [6, 2, 8, 14, 1, 20, 80, 300]
# p bubble_sort_test(test_num_arr)