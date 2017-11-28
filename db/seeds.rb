# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning seeds..."
Alibi.destroy_all

tess = User.create(email: "tess@mail.com", password: '123456')
xavier = User.create(email: "xavier@mail.com", password: '123456')
yann = User.create(email: "yann@mail.com", password: '123456')
roni = User.create(email: "roni@mail.com", password: '123456')

puts "creating seeds..."
alibi_attributes = [
{ title: "Fake friend to hide your love affair",
  description: "Cheating on your wife for months and she's finally about to find out? HAVE NO FEAR, your alibi JULIEN is coming to save you. Julien, your childhood friend that you haven't seen in ages. 'Yes, hunny, it's Julien who's taking up all my time. Don't be paranoid, no I don't have a lover. If you're nice, I'll introduce him to you. BOOK JULIEN TODAY.",
  price: 100,
  location: "Paris",
  category: "Relationship",
  user: User.all.sample
},
{ title: "Fake person to do Le Wagon's flashcards",
  description: "Tired of doing le Wagon's flashcards EVERY NIGHT? HAVE NO FEAR, Boris is your alibi to do them! Boris: 'its so easy for me, it feels like I made them!'. Don't wait one second more, and BOOK BORIS TODAY.",
  price: 200,
  location: "Paris/Bordeaux/Marseille",
  category: "Education",
  user: User.all.sample
},
{ title: "Fake doctor to prevent you from going to an exam",
  description: "Having to pass your final exam but you spent the night with the pretty girl from the bar instead of revising (a bar the day before your exam ??) ? FEAR NOT! Dr. Saunier is here to warn your school that you have a terminal disease and that you only have a few hours left to live - too bad you can't take that exam. BOOK DR.SAUNIER TODAY.",
  price: 150,
  location: "Paris",
  category: "Education",
  user: User.all.sample
},
{ title: "Fake companion to present to your parents",
  description: "Your boyfriend is a hispter vegan tatooed bald KKK supporter and you're not sure that your parents will like him? FEAR NOT! KEVIN is here! Kevin is tall, nice, polite, and a teacher! What else could could you parents want? BOOK KEVIN TODAY.",
  price: 300,
  location: "Paris/Marseille",
  category: "Family",
  user: User.all.sample
},
{ title: "Fake grandma faking their death to get you out work",
  description: "You're overload with work and you really don't want to go to that meeting tomorrow? FEAR NOT, your grandma TATIANA will come to work to visit you and OH NO SHE JUST HAD A HEART ATTACK ON THE FLOOR. I guess the meeting will have to wait. BOOK TATIANA TODAY.",
  price: 240,
  location: "Marseille",
  category: "Work",
  user: User.all.sample
}

]

images_url = [
  "kc-julien.jpg",
  "boris_unicorn.png",
  "coquinou.jpg",
  "kevin.png",
  "12289141.jpg",
]

alibi_attributes.each_with_index do |alibi, index|
  alibi = Alibi.new(alibi)
  alibi.photo = Rails.root.join("db/images/#{images_url[index]}").open
  alibi.save
end

puts "Done"
