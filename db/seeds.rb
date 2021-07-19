# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = ['left-bicep', 'right-bicep', 'waist', 
        'hips', 'left-thigh', 'right-thigh']

names.each do |name|
  measurement = Measurement.create!(name: name)
  10.times do |i|
    Measure.create!(data: rand(11.2...76.9).round(2), measurement: measurement)
    puts "#{i+1} created"
  end

  puts "#{name} created!"
end
