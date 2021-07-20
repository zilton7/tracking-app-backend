# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = ['Left Bicep', 'Right Bicep', 'Waist', 
        'Hips', 'Left Thigh', 'Right Thigh']

images = ['https://i.ibb.co/cXWZ575/bicep-left.png',
        'https://i.ibb.co/y05nys2/bicep-right.png',
        'https://i.ibb.co/c1qCHH5/waist.png',
        'https://i.ibb.co/BV6gkc3/hip.png',
        'https://i.ibb.co/0YCggXV/leg-left.png',
        'https://i.ibb.co/RjkyrPx/leg-right.png']

names.length.times do |i|
  measurement = Measurement.create!(name: names[i], image: images[i] )
  10.times do |j|
    Measure.create!(data: rand(11.2...76.9).round(2), measurement: measurement)
    puts "#{j+1} created"
  end

  puts "#{names[i]} created!"
end
