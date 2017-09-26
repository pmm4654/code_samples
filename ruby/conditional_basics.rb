
def even_or_odd(number)
  odd_or_even = nil
  if number % 2 == 0
    odd_or_even = 'even'
  else
    odd_or_even = 'odd'
  end
end

puts even_or_odd(5)
