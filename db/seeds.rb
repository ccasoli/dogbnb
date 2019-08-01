# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do 
    d =Dog.create(name: Faker::Creature::Dog.name, city_id: Faker::Number.within(range: 1..20))
end

60.times do
    d =DogSitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.within(range: 1..20))
end

20.times do
    d =City.create(name: Faker::Address.city)
end

30.times do
    d =Stroll.create(dog_id: Faker::Number.within(range: 1..100), dog_sitter_id: Faker::Number.within(range: 1..60))
end