# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
organizations = JSON.parse(File.read(Rails.root.join('lib/data/organizations.json')))
organizations.each do |organization|
  Organization.create(organization)
end

users = JSON.parse(File.read(Rails.root.join('lib/data/users.json')))
users.each do |user|
  User.create(user)
end

tickets = JSON.parse(File.read(Rails.root.join('lib/data/tickets.json')))
tickets.each do |ticket|
  Ticket.create(ticket)
end