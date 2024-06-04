# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Motorcycle.destroy_all

user1 = User.create!(
  email: "andre@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Andre Big Man",
  username: "andrebigman",
  age: 30
)

user2 = User.create!(
  email: "chloe@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Chloe Bosslady",
  username: "chloebosslady",
  age: 25
)

puts "Created users:"
puts "User 1: #{user1.name} (#{user1.email})"
puts "User 2: #{user2.name} (#{user2.email})"

motorcycle1 = Motorcycle.create!(
  image_url: "https://images.app.goo.gl/1S4dxX88NCsJo3YV8",
  description: "Yamaha R7 - A stunning supersport motorcycle with excellent performance and handling.",
  typeM: "Supersport",
  make: "Yamaha",
  model: "R7",
  year: 2024,
  user: user1
)

motorcycle2 = Motorcycle.create!(
  image_url: "https://images.app.goo.gl/wc4KmeMxpFAcq4dBA",
  description: "Ducati Scrambler - A stylish naked bike that offers a great blend of performance and comfort.",
  typeM: "Naked Bike",
  make: "Ducati",
  model: "Scrambler",
  year: 2018,
  user: user2
)

puts "Created motorcycles:"
puts "Motorcycle 1: #{motorcycle1.make} #{motorcycle1.model} (#{motorcycle1.year}) listed by #{motorcycle1.user.name}"
puts "Motorcycle 2: #{motorcycle2.make} #{motorcycle2.model} (#{motorcycle2.year}) listed by #{motorcycle2.user.name}"

puts "Database seeded successfully!"
