# Euler Project 40
#
# An irrational decimal fraction is created by concatenating the positive integers:
#
# 0.123456789101112131415161718192021...
#
# It can be seen that the 12th digit of the fractional part is 1.
#
# If dn represents the nth digit of the fractional part, find the value of the following expression.
#
# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

numbers = [*1..1000000]

string_array = numbers.map(&:to_s)
joined_array = string_array.join("")
digit_array = joined_array.split("").map { |s| s.to_i }

a = digit_array[0]
b = digit_array[9]
c = digit_array[99]
d = digit_array[999]
e = digit_array[9999]
f = digit_array[99999]
g = digit_array[999999]

# # checking what the digits are:
# puts a
# puts b
# puts c
# puts d
# puts e
# puts f
# puts g

puts a * b * c * d * e * f * g
