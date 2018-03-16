# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


low = Priority.create!(priority: '!')
medium = Priority.create!(priority: '!!')
high = Priority.create!(priority: '!!!')

puts "#{Priority.count} priorities created!"

Task.create!(name: 'car', details: 'wash the car', completeby: "3/22/2018", priority_id: 1)
Task.create!(name: 'make bed', details: 'its rly messy', completeby: "today", priority_id: 1)

puts "#{Task.count} tasks create"
