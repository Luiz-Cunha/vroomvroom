require "open-uri"
User.destroy_all
Motorcycle.destroy_all
fileprof1 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
fileprof2 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
fileprof3 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
fileprof4 = URI.open("https://blog.polipet.com.br/wp-content/uploads/2024/01/pato-445x445.jpeg")
user1 = User.new(
  email: "andre@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Andre Big Man",
  username: "andrebigman",
  age: 30,
  address: "123 Main St, San Francisco, CA"
)
user1.photo.attach(io: fileprof1, filename: "andre_profile_pic.png", content_type: "image/png")
user1.save
user2 = User.new(
  email: "chloe@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Chloe Bosslady",
  username: "chloebosslady",
  age: 25,
  address: "456 Elm St, Los Angeles, CA"
)
user2.photo.attach(io: fileprof2, filename: "chloe_profile_pic.png", content_type: "image/png")
user2.save
user3 = User.new(
  email: "sam@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Sam Speedster",
  username: "samspeedster",
  age: 28,
  address: "789 Maple Ave, New York, NY"
)
user3.photo.attach(io: fileprof3, filename: "sam_profile_pic.png", content_type: "image/png")
user3.save
user4 = User.new(
  email: "lisa@lewagon.com",
  password: "password123",
  password_confirmation: "password123",
  name: "Lisa Rider",
  username: "lisarider",
  age: 32,
  address: "321 Oak St, Chicago, IL"
)
user4.photo.attach(io: fileprof4, filename: "lisa_profile_pic.png", content_type: "image/png")
user4.save
puts "Created users:"
puts "User 1: #{user1.name} (#{user1.email})"
puts "User 2: #{user2.name} (#{user2.email})"
puts "User 3: #{user3.name} (#{user3.email})"
puts "User 4: #{user4.name} (#{user4.email})"
file1 = URI.open("https://cdn-0.totalmotorcycle.com/wp-content/uploads/2020/11/2021-Suzuki-Katana3-1024x682.jpg")
file2 = URI.open("https://png.pngtree.com/png-vector/20231026/ourmid/pngtree-hyper-realistic-ducati-panigale-v4-r-transparent-background-png-image_10370632.png")
file3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/a/ae/Kawasaki_Ninja_H2R_Seattle_motorcycle_show.jpg")
file4 = URI.open("https://cdn.room58.com/2023/06/29/06c9ba0762f7258282a10a3ddcc1605b_6b4c009a2d5ce128.jpg")
file5 = URI.open("https://suzukicycles.com/-/media/project/cycles/images/products/motorcycles/gsx-r1000a/2022/gallery/gsx-r1000am2_cb8_diagonal_gallery_2400x1600.png?w=1280&hash=B3F0A1157C1FF3EBE2DB086011187F30")
file6 = URI.open("https://cdn-0.totalmotorcycle.com/wp-content/uploads/2018/11/2019-Honda-CBR500R-ABS1.jpg")
file7 = URI.open("https://cdn-0.totalmotorcycle.com/wp-content/uploads/2021/07/2022-BMW-CE04e-1024x576.jpg")
file8 = URI.open("https://cdn-0.totalmotorcycle.com/wp-content/uploads/2023/01/2023-Harley-Davidson-Fat-Bob-114d-1024x615.jpg")
file9 = URI.open("https://cdn-0.totalmotorcycle.com/wp-content/uploads/2016/12/2013-Benelli-TRE1130K2-small.jpg?ezimgfmt=rs:700x513/rscb26")
motorcycle1 = Motorcycle.new(
  description: "Forged to perfection and polished to a magnificent radiance. Engineered to provide maximum control and optimum performance.",
  price: 150,
  typeM: "Sportive",
  make: "Suzuki",
  model: "Katana",
  year: 2021,
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
motorcycle6 = Motorcycle.new(
  description: "The CBR500R is redrawn with direct sports influence from the CBR1000RR Fireblade. Its sharper, more aggressive lines also incorporate unique aerodynamic winglets.",
  price: 90,
  typeM: "Supersport",
  make: "Honda",
  model: "CBR500R",
  year: 2019,
  user: user1
)
motorcycle6.photo.attach(io: file6, filename: "suzuki_gsxr750.png", content_type: "image/png")
motorcycle6.save

puts "Created motorcycles:"
puts "Motorcycle 1: #{motorcycle1.make} #{motorcycle1.model} (#{motorcycle1.year}) listed by #{motorcycle1.user.name}"
puts "Motorcycle 2: #{motorcycle2.make} #{motorcycle2.model} (#{motorcycle2.year}) listed by #{motorcycle2.user.name}"
puts "Motorcycle 3: #{motorcycle3.make} #{motorcycle3.model} (#{motorcycle3.year}) listed by #{motorcycle3.user.name}"
puts "Motorcycle 4: #{motorcycle4.make} #{motorcycle4.model} (#{motorcycle4.year}) listed by #{motorcycle4.user.name}"
puts "Motorcycle 5: #{motorcycle5.make} #{motorcycle5.model} (#{motorcycle5.year}) listed by #{motorcycle5.user.name}"
puts "Database seeded successfully!"
