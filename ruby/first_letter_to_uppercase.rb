'''
Everything in Ruby is a class.  If you have a string defined, that is an instance of the String class.
you can check the class of anything by calling .class on it.
Example:

  2.4.0 :001 > "string".class
   => String

You can also add a method to the base String class.  First you need to create the 
String class and then all you need to do is add methods to it.  Below is an example of 
how you can add a method that capitalizes the first letter of each word in a given string.
After you have that method defined, you can call it on any instance of a string.

'''
class String
  def firstLetterToUppercase
    self.split(" ").map(&:capitalize).join(" ")
  end
end

puts "things and stuff".firstLetterToUppercase