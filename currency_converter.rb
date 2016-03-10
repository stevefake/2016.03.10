
# define a A CurrencyConverter class in its own file.

# represent a currency converter (arguably a real-world person,
# but actually a set of procedures)



# ////////////////

# class EvenAdder
#
#   def initialize(value)
#     @value = value
#   end
#
#   def +(value)   #preferred name of the variable for mathematical
#     puts value   #operators is 'other'
#   end
#
#   def +(other)
#     if @value.even? && other.value.even?
#       EvenAdder.new(@value + other.value)
#     else
#       false
#     end
#   end
#
# end
#
# a = EvenAdder.new(1)
# b = EvenAdder.new(5)
#
# a.value
# b.value
#
# a + b
# a.+(b)
#
# c = EvenAdder.new(2)
# d = EvenAdder.new(4)
# c + d + a
