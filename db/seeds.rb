puts "🌱 Seeding employees..."

10.times do
    Employee.create(name: Faker::Name.name, position: Faker::Job.title, department: Faker::Job.field)
end

puts "✅ Done seeding employees!"

puts "🌱 Seeding comments..."

15.times do
    Comment.create(employee_id: Employee.all.sample.id, comment_content: Faker::Quote.famous_last_words)
end

puts "✅ Done seeding comments!"

puts "🌱 Seeding snacks..."

s1 = Snack.create(employee_id: Employee.all.sample.id, name: "Cheez-It", keto: false, gluten_free: false, vegetarian: true, dairy_free: false, nut_free: true, picture: "https://bjs.scene7.com/is/image/bjs/266604?$bjs-Zoom$")
s2 = Snack.create(employee_id: Employee.all.sample.id, name: "Plain bagels", keto: false, gluten_free: false, vegetarian: true, dairy_free: true, nut_free: true, picture: "https://smartcdn.prod.postmedia.digital/nationalpost/wp-content/uploads/2021/02/bagel-1.png")
s3 = Snack.create(employee_id: Employee.all.sample.id, name: "Butter popcorn", keto: false, gluten_free: true, vegetarian: true, dairy_free: false, nut_free: true, picture: "https://www.recipetineats.com/wp-content/uploads/2018/08/Movie-Popcorn_1.jpg")
s4 = Snack.create(employee_id: Employee.all.sample.id, name: "Strawberries", keto: true, gluten_free: true, vegetarian: true, dairy_free: true, nut_free: true, picture: "https://extension.colostate.edu/wp-content/uploads/2021/04/07000-fig1.jpg")
s5 = Snack.create(employee_id: Employee.all.sample.id, name: "Pretzels", keto: false, gluten_free: false, vegetarian: true, dairy_free: true, nut_free: true, picture: "https://www.foodbusinessnews.net/-/media/E6491B2162544491B7309327D0E2C6F2.ashx")
s6 = Snack.create(employee_id: Employee.all.sample.id, name: "Seaweed", keto: true, gluten_free: true, vegetarian: true, dairy_free: true, nut_free: true, picture: "https://thekitchencommunity.org/wp-content/uploads/2020/12/The-Best-Seaweed-Snacks-1-1200x900.jpg")
s7 = Snack.create(employee_id: Employee.all.sample.id, name: "Carrots", keto: true , gluten_free: true, vegetarian: true, dairy_free: true, nut_free: true, picture: "https://images2.minutemediacdn.com/image/upload/c_crop,h_1349,w_2400,x_0,y_125/v1629743615/shape/mentalfloss/gettyimages-1139144258.jpg?itok=aWUJYhOM")
s8 = Snack.create(employee_id: Employee.all.sample.id, name: "Cheerios", keto: false, gluten_free: false, vegetarian: true, dairy_free: true, nut_free: true, picture: "https://www.pngitem.com/pimgs/m/230-2306212_honey-nut-cheerios-cereal-box-hd-png-download.png")
s9 = Snack.create(employee_id: Employee.all.sample.id, name: "Banana nut bread", keto: false, gluten_free: false, vegetarian: true, dairy_free: false, nut_free: false, picture: "https://www.thediaryofarealhousewife.com/wp-content/uploads/2021/06/Banana-Nut-Bread-recipe-1.jpg")
s10 = Snack.create(employee_id: Employee.all.sample.id, name: "Beef Jerky", keto: true, gluten_free: false, vegetarian: false, dairy_free: true, nut_free: true, picture: "https://post.healthline.com/wp-content/uploads/2020/03/dried-beef-jerky-732x549-thumbnail-732x549.jpg")

puts "✅ Done seeding snacks!"
