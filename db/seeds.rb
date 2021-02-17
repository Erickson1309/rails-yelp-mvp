# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#puts "Cleaning database..."
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: %w(Chinese Italian Japanese French Belgian).sample
  )
end

puts "Finished!"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
