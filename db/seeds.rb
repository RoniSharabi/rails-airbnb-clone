# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "cleaning seeds..."
Alibi.destroy_all

puts "creating seeds..."
alibi_attributes = [
{ title: "Fake friend to hide your love affair",
  price: "100€/hour",
  description: "abcd",
  location: "Paris",
  category: "Relationships",
  user_id: User.first.id
},
{ title: "Fake person to do Le Wagon's flashcards",
  price: "200€/flashcard",
  description: "abcd",
  location: "Paris/Bodeaux/Marseille",
  category: "Education",
  user_id: User.first.id
},
{ title: "Fake doctor to prevent you from going to an exam",
  price: "150€/hour",
  description: "abcd",
  location: "Paris",
  category: "Education",
  user_id: User.first.id
},
{ title: "Fake companion to present to your parents",
  price: "300€/hour",
  description: "abcd",
  location: "Paris/Marseille",
  category: "Family",
  user_id: User.first.id
},
{ title: "Fake grandma faking their death to get you out work",
  price: "240€/hour",
  description: "abcd",
  location: "Marseille",
  category: "Work",
  user_id: User.first.id
}
]

alibi_attributes.each do |alibi|
  Alibi.create(alibi)
end


puts "done"
