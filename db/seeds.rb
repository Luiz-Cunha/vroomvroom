require "open-uri"

User.destroy_all
Motorcycle.destroy_all

user1 = User.create!(
  email: "andre@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Andre Big Man",
  username: "andrebigman",
  age: 30,
  address: "123 Main St, San Francisco, CA"
)

user2 = User.create!(
  email: "chloe@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Chloe Bosslady",
  username: "chloebosslady",
  age: 25,
  address: "456 Elm St, Los Angeles, CA"
)

user3 = User.create!(
  email: "sam@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Sam Speedster",
  username: "samspeedster",
  age: 28,
  address: "789 Maple Ave, New York, NY"
)

user4 = User.create!(
  email: "lisa@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Lisa Rider",
  username: "lisarider",
  age: 32,
  address: "321 Oak St, Chicago, IL"
)

puts "Created users:"
puts "User 1: #{user1.name} (#{user1.email})"
puts "User 2: #{user2.name} (#{user2.email})"
puts "User 3: #{user3.name} (#{user3.email})"
puts "User 4: #{user4.name} (#{user4.email})"

file1 = URI.open("https://static.wikia.nocookie.net/godmodes/images/5/51/Moto_action.png/revision/latest?cb=20190309034710")
file2 = URI.open("https://png.pngtree.com/png-vector/20231026/ourmid/pngtree-hyper-realistic-ducati-panigale-v4-r-transparent-background-png-image_10370632.png")
file3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/a/ae/Kawasaki_Ninja_H2R_Seattle_motorcycle_show.jpg")
file4 = URI.open("https://cdn.room58.com/2023/06/29/06c9ba0762f7258282a10a3ddcc1605b_6b4c009a2d5ce128.jpg")
file5 = URI.open("https://suzukicycles.com/-/media/project/cycles/images/products/motorcycles/gsx-r1000a/2022/gallery/gsx-r1000am2_cb8_diagonal_gallery_2400x1600.png?w=1280&hash=B3F0A1157C1FF3EBE2DB086011187F30")

motorcycle1 = Motorcycle.new(
  description: "Moto moto likes you.",
  price: 999999,
  typeM: "Hypho",
  make: "Powerful",
  model: "Gray",
  year: 2024,
  user: user1
)

motorcycle1.photo.attach(io: file1, filename: "yamaha_r7.png", content_type: "image/png")
motorcycle1.save

motorcycle2 = Motorcycle.new(
  description: "Ducati Scrambler - A stylish naked bike that offers a great blend of performance and comfort.",
  price: 200,
  typeM: "Naked Bike",
  make: "Ducati",
  model: "Scrambler",
  year: 2018,
  user: user2
)

motorcycle2.photo.attach(io: file2, filename: "ducati_scrambler.png", content_type: "image/png")
motorcycle2.save

motorcycle3 = Motorcycle.new(
  description: "Kawasaki Ninja - A top-tier supersport bike known for its speed and agility.",
  price: 180,
  typeM: "Supersport",
  make: "Kawasaki",
  model: "Ninja",
  year: 2021,
  user: user3
)

motorcycle3.photo.attach(io: file3, filename: "kawasaki_ninja.png", content_type: "image/png")
motorcycle3.save

motorcycle4 = Motorcycle.new(
  description: "Harley-Davidson Iron 883 - A classic cruiser bike with a bold design and powerful engine.",
  price: 220,
  typeM: "Cruiser",
  make: "Harley-Davidson",
  model: "Iron 883",
  year: 2019,
  user: user4
)

motorcycle4.photo.attach(io: file4, filename: "harley_iron883.png", content_type: "image/png")
motorcycle4.save

motorcycle5 = Motorcycle.new(
  description: "Suzuki GSX-R750 - A versatile supersport motorcycle offering a perfect balance of power and handling.",
  price: 170,
  typeM: "Supersport",
  make: "Suzuki",
  model: "GSX-R750",
  year: 2022,
  user: user1
)

motorcycle5.photo.attach(io: file5, filename: "suzuki_gsxr750.png", content_type: "image/png")
motorcycle5.save

puts "Created motorcycles:"
puts "Motorcycle 1: #{motorcycle1.make} #{motorcycle1.model} (#{motorcycle1.year}) listed by #{motorcycle1.user.name}"
puts "Motorcycle 2: #{motorcycle2.make} #{motorcycle2.model} (#{motorcycle2.year}) listed by #{motorcycle2.user.name}"
puts "Motorcycle 3: #{motorcycle3.make} #{motorcycle3.model} (#{motorcycle3.year}) listed by #{motorcycle3.user.name}"
puts "Motorcycle 4: #{motorcycle4.make} #{motorcycle4.model} (#{motorcycle4.year}) listed by #{motorcycle4.user.name}"
puts "Motorcycle 5: #{motorcycle5.make} #{motorcycle5.model} (#{motorcycle5.year}) listed by #{motorcycle5.user.name}"

puts "Database seeded successfully!"
