# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  arr.combination(2).any? {|couple| sum(couple) == n}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /^[bcdfghjklmnpqrstvwxyz]/i === s
end

def binary_multiple_of_4? s
  return false if s.length==0 || s.match(/[^01]/);
  return s.to_i % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = Float(price)
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
