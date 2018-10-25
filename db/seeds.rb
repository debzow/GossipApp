# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#create 5 cities in the table city
5.times do
  City.create!(name: Faker::Hobbit.character, postal_code: rand(1..100))
end

#create 10 users in the table user
10.times do
  User.create!(first_name: Faker::Simpsons.character, last_name: Faker::Simpsons.character, description: Faker::Simpsons.quote, email: Faker::Simpsons.character, age: rand(1..100), city_id: rand(1..City.count))
end

#create 10 potins in the table potin
10.times do
  Potin.create!(title: Faker::Simpsons.character, content: Faker::Simpsons.quote, date: Faker::Date.backward(15), city_id: rand(1..City.count), user_id: rand(1..User.count))
end

#create 10 comments in the table comment
10.times do
  Comment.create!(content: Faker::Simpsons.quote, user_id: rand(1..User.count), potin_id: rand(1..Potin.count))
end

#create 10 critics in the table critic
10.times do
  Critic.create!(content: Faker::Simpsons.quote, user_id: rand(1..User.count), comment_id: rand(1..Comment.count))
end

#create 10 tags in the table tag
10.times do
  Tag.create!(title: Faker::Simpsons.character, potin_id: rand(1..Potin.count), user_id: rand(1..User.count))
end

#create 10 likes in the table like
10.times do
  Like.create!(potin_id: rand(1..Potin.count), user_id: rand(1..User.count))
end

#create 10 private_messages in the table private_message
#10.times do
#  PrivateMessage.create!(content: Faker::Simpsons.quote, date: Faker::Date.backward(15), sender: rand(1..User.count), recipient: rand(1..User.count))
#end
