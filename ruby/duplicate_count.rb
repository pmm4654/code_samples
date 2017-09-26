# each_char iterates through each character in a string
# You can pass a block (noted by the curly brackets that will be evaluated for every item iterated)
# You can also use a different syntax if the code is too complex for 1 line

'''   
  text.each_char do |char|
    ...
  end
'''

# char_count.values returns an array of the values in the hash.
# A hash is like a javascript object - very similar syntax
# Javascript object:
#   js_obj = { something: "value", "another_thing": "value2" }
# A ruby hash can be defined in that exact way, too, but the convention is to use
# a hashrocket( => )
# Ruby conventional hash
#   ruby_hash = { :something => "value", :another_thing => "value2" }
#   
#   ruby_hash.value will return ["value", "value2"]
#   
#   the select method loops through an array and will return an array that matches the criteria
#   that you passed it in the block.  In this case, it will return all values that are creater than 1


def duplicate_count(text)
    char_count = Hash.new(0)
    text.each_char{ |char| char_count[char.downcase] += 1 }
    char_count.values.select{| a| a > 1 }.count
end

puts duplicate_count("fartalicious shandangaloo")