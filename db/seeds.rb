# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create!(first_name: Faker::TheFreshPrinceOfBelAir.character, last_name: Faker::Simpsons.character, description: Faker::ChuckNorris.fact, email: Faker::Internet.email, age: rand(14...80), city_id: 1)
end

10.times do
  city = City.create!(name: Faker::OnePiece.location, postal_code: Faker::Nation.capital_city)
end

20.times do
  gossip = Gossip.create!(title: Faker::Pokemon.move, content: Faker::RickAndMorty, city_id: 2, user_id: 1)
end

10.times do
  tag = Tag.create!(title: Faker::OnePiece.akuma_no_mi, gossip_id: 3)
end

7.times do
pm = PrivateMessage.create!(content: Faker::HeyArnold.quote, sender_id: 4, recipient_id: 5)
end