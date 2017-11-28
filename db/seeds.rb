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
Tess = User.create
Xavier = User.create
Yann = User.create
Roni = User.create

puts "creating seeds..."
alibi_attributes = [
{ title: "Fake friend to hide your love affair",
  price: "100€/hour",
  location: "Paris",
  category: "Relationships",
  user: Roni
},
{ title: "Fake person to do Le Wagon's flashcards",
  price: "200€/flashcard",
  location: "Paris/Bodeaux/Marseille",
  category: "Education",
  user: Yann
},
{ title: "Fake doctor to prevent you from going to an exam",
  price: "150€/hour",
  location: "Paris",
  category: "Education",
  user: Xavier
},
{ title: "Fake companion to present to your parents",
  price: "300€/hour",
  location: "Paris/Marseille",
  category: "Family",
  user: Tess
},
{ title: "Fake grandma faking their death to get you out work",
  price: "240€/hour",
  location: "Marseille",
  category: "Work",
  user: Xavier
}
]
Alibi.create(alibi_attributes)

puts "done"
