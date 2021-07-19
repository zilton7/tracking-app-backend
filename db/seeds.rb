# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = ['left-bicep', 'right-bicep', 'waist', 
        'hips', 'left-thigh', 'right-thigh']

iter = 0
30.times do |i|
  iter = 0 if iter >= 5
  measurement = Measurement.create!(name: names[iter])
  measure = Measure.create!(data: rand(11.2...76.9), measurement: measurement)
  iter += 1
  puts "#{i} created!"
end
