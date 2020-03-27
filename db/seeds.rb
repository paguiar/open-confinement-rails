# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def randomness
  rand(-0.02..0.02)
end

def random_lat
  48.858202 + randomness
end

def random_long
  2.294270 + randomness
end

User.create(email: 'paguiar32@gmail.com', password: 'password', password_confirmation: 'password', name: 'Pedro Aguiar', latitude: random_lat, longitude: random_long)
User.create(email: 'pau.ferretiz@gmail.com', password: 'password', password_confirmation: 'password', name: 'Paulina Ferretiz', latitude: random_lat, longitude: random_long)

100.times do |i|
  User.create(email: "bot-#{i}@gmail.com", password: 'password', password_confirmation: 'password', name: "Bot #{i}", latitude: random_lat, longitude: random_long)
end

Service.create(name: 'Support for crisis management workers', details: 'Supporting public services, health staff, etc')
Service.create(name: 'Remote IT or administrative support', details: '')
Service.create(name: 'Remote homework support', details: 'For students taking remote courses')
Service.create(name: 'Talking/conversation', details: '')
Service.create(name: 'Buying essential food/products', details: '')
Service.create(name: 'Solidarity acts', details: '')
Service.create(name: 'Walking domestic animals', details: '')

1.times do
  User.all.each do |user|
    if rand() > 0.5
      Proposal.create(user_id: user.id, service_id: rand(1..Service.all.size), notes: '')
    else
      Request.create(user_id: user.id, service_id: rand(1..Service.all.size), notes: '')
    end
  end
end
