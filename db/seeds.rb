# Dog.delete_all
# Dogsitter.delete_all
# Stroll.delete_all
# City.delete_all

############################################
# NUMBERS

nb_dogs = 75
nb_dogsitters = 150
nb_strolls = 50
nb_cities = 7

############################################
# CITIES

nb_cities.times do |i|
  City.create!(
    city_name: Faker::Address.city,
  )
end
puts "#{nb_cities} cities built!"

############################################
# DOGS

nb_dogs.times do |i|
  Dog.create!(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    gender: Faker::Creature::Dog.gender,
    city_id: City.all.shuffle.last.id,
    is_a_good_dog: true,
  )
end
puts "#{nb_dogs} dogs created!"

############################################
# DOGSITTERS

nb_dogsitters.times do |i|
  Dogsitter.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    gender: Faker::Gender.type,
    age: rand(18..70),
    city_id: City.all.shuffle.last.id,
  )
end
puts "#{nb_dogsitters} dogsitters created!"


############################################
# STROLLS

nb_strolls.times do |i|
  Stroll.create!(
    date: Faker::Time.between_dates(from: Date.today, to: Date.today + 30, period: :day),
    dog_id: Dog.all.shuffle.last.id,
    dogsitter_id: Dogsitter.all.shuffle.last.id,
    )
end

puts "#{nb_strolls} strolls scheduled!"

############################################

puts "Seeding done!"