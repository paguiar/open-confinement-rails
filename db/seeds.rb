# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'paguiar32@gmail.com', name: 'Pedro Aguiar', latitude: 48.858202, longitude: 2.294270)
User.create(email: 'pau.ferretiz@gmail.com', name: 'Paulina Ferretiz', latitude: 48.838202, longitude: 2.284270)

Service.create(name: 'Talk regularly', details: '')
Service.create(name: 'Walk the dog', details: '')
Service.create(name: 'Go get groceries', details: '')

Proposal.create(user_id: User.find(2).id, service_id: Service.find(1).id, notes: '')

Request.create(user_id: User.find(1).id, service_id: Service.find(2).id, notes: '')
