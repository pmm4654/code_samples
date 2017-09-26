# In ruby there is no need for a return statement.  Ruby implicitly returns
# the last line in a function.  For example, the function below will multiply 2 values
# and then return the result implicitly

def multiply_two_values(a, b)
  a * b
end

puts multiply_two_values(2, 6)