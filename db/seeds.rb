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
<<<<<<< HEAD
=======
tess = User.create(email: "tess@mail.com", password: '123456')
xavier = User.create(email: "xavier@mail.com", password: '123456')
yann = User.create(email: "yann@mail.com", password: '123456')
roni = User.create(email: "roni@mail.com", password: '123456')
>>>>>>> 83d9eff8c8ebc09061ba4ba7811aaa240f59406c

puts "creating seeds..."
alibi_attributes = [
{ title: "Fake friend to hide your love affair",
  description: "abcd",
  price: "100€/hour",
  description: "abcd",
  location: "Paris",
  category: "Relationships",
  user: User.all.sample
},
{ title: "Fake person to do Le Wagon's flashcards",
  description: "abcd",
  price: "200€/flashcard",
  description: "abcd",
  location: "Paris/Bodeaux/Marseille",
  category: "Education",
  user: User.all.sample
},
{ title: "Fake doctor to prevent you from going to an exam",
  description: "abcd",
  price: "150€/hour",
  description: "abcd",
  location: "Paris",
  category: "Education",
  user: User.all.sample
},
{ title: "Fake companion to present to your parents",
  description: "abcd",
  price: "300€/hour",
  description: "abcd",
  location: "Paris/Marseille",
  category: "Family",
  user: User.all.sample
},
{ title: "Fake grandma faking their death to get you out work",
  description: "abcd",
  price: "240€/hour",
  description: "abcd",
  location: "Marseille",
  category: "Work",
  user: User.all.sample
}
]
alibi_attributes.each do |alibi|
  Alibi.create(alibi)
end
puts "done"
