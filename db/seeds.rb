# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
#   contact = Contact.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number)
#   contact.save
# end

# update everyone's middle name and bio so they aren't blank

# loop through `them all` => all the contacts. how do i get all the contacts (preferably in an array)? Contact.all
# loop through them
# modify them

contacts = Contact.all

contacts.each do |contact|
  contact.middle_name = Faker::Name.first_name
  contact.bio = Faker::Lorem.paragraph
  contact.save
end
