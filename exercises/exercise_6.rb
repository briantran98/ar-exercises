require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name:'Khurram', last_name:'Virani', hourly_rate: 60)
@store1.employees.create(first_name:'Glen', last_name:'Chen', hourly_rate: 55)
@store1.employees.create(first_name:'Nima', last_name:'Nima', hourly_rate: 58)
@store2.employees.create(first_name:'Jeremy', last_name:'Holman', hourly_rate: 65)
@store2.employees.create(first_name:'Max', last_name:'Kevalenkov', hourly_rate: 58)
@store2.employees.create(first_name:'Aaron', last_name:'Durfall', hourly_rate: 50)
@store2.employees.create(first_name:"CC", last_name:"BB", hourly_rate: 50)
