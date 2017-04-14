# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
6.times do
  Category.create name: Faker::Hacker.noun
end

1000.times do
  category = Category.all.sample

  Post.create title: Faker::Hacker.say_something_smart,
               body: Faker::Hipster.paragraph,
        category_id: category.id,
              likes: rand(500),
              image: Faker::Fillmurray.image(false, rand(50)+300, 200)
end

puts 'Created 1000 posts'