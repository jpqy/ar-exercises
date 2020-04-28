require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Sum of annual revenue of all stores: #{Store.sum(:annual_revenue)}"
puts "Average annual revenue of all stores: #{Store.average(:annual_revenue)}"
puts "Number of stores that are generating $1M or more in annual sales: "
puts Store.where(annual_revenue: 1_000_000..).size