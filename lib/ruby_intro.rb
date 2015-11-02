# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  res = 0
  arr.each {|e| res += e}
  return res
end


def max_2_sum arr
  return 0 unless arr.length > 0
  return arr[0] unless arr.length > 1
  max1 = arr.max
  arr.delete_at(arr.index(max1) || arr.length)
  max2 = arr.max
  max1 + max2
end

def sum_to_n? arr, n
  return false unless arr.length > 0
  for i in 0...arr.length
    for j in i+1...arr.length
       if arr[i]+arr[j] == n
         return true
       end
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[a-z]/i and s =~ /^[^aeiou]/i
end

def binary_multiple_of_4? s
  return false unless s =~ /^[01]+$/
  return true if s == "0"
  return s =~ /00$/
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    raise ArgumentError if isbn == "" or price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    sprintf("$%0.2f", @price)
  end
end
