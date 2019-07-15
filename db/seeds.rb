require 'faker'

puts "Creating restaurants..."

cities = ["Canggu", "Seminyak", "Ubud", "Denpasar"]

10.times do
  Restaurant.create(
    name: Faker::Coffee.blend_name,
    city: cities.sample
  )
end
