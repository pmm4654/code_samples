def fizz_buzz
  1.upto(100) do |i|
    if i % 15 == 0
      puts "FizzBuzz"
    elsif i % 5 == 0
      puts "Buzz"
    elsif i % 3 == 0
      puts "Fizz"
    end
  end
end

fizz_buzz