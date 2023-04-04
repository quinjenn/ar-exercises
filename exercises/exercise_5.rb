require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Total revenue for the entire company (all stores)
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue: #{total_revenue}"

# Average annual revenue for all stores
avg_annual_revenue = Store.average(:annual_revenue)
puts "Average annual revenue: #{avg_annual_revenue}"

#Calculations
# Number of stores that are generating $1M or more in annual sales
num_stores = Store.where("annual_revenue >= ?", 1000000).count
puts "Number of stores generating $1M or more in annual sales: #{num_stores}"
