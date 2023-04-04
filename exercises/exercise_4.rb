require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


#Loading a subset of stores
# Creating 3 more stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetching stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "Name: #{store.name} | Annual Revenue: #{store.annual_revenue}"
end

# Fetching stores that carry women's apparel and generate less than $1M in annual revenue
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
@womens_stores.each do |store|
  puts "Name: #{store.name} | Annual Revenue: #{store.annual_revenue}"
end
