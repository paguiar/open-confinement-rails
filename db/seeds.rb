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

User.create(email: 'paguiar32@gmail.com', name: 'Pedro Aguiar', latitude: random_lat, longitude: random_long)
User.create(email: 'pau.ferretiz@gmail.com', name: 'Paulina Ferretiz', latitude: random_lat, longitude: random_long)

100.times do |i|
  User.create(email: "bot-#{i}@gmail.com", name: "Bot #{i}", latitude: random_lat, longitude: random_long)
end

Service.create(name: 'Talk regularly', details: '')
Service.create(name: 'Walk the dog', details: '')
Service.create(name: 'Go get groceries', details: '')

3.times do
  User.all.each do |user|
    if rand() > 0.5
      Proposal.create(user_id: user.id, service_id: rand(1..Service.all.size), notes: '')
    else
      Request.create(user_id: user.id, service_id: rand(1..Service.all.size), notes: '')
    end
  end
end
