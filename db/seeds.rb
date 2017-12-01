# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning seeds..."
Alibi.destroy_all
User.destroy_all

tess = User.create(email: "tess@mail.com", password: '123456')
xavier = User.create(email: "xavier@mail.com", password: '123456')
yann = User.create(email: "yann@mail.com", password: '123456')
roni = User.create(email: "roni@mail.com", password: '123456')

puts "creating seeds..."
puts "defining alibi attributes..."

alibi_attributes = [
{ title: "Fake friend to hide your love affair",
  description: "Cheating on your husband for months and he's finally about to find out? HAVE NO FEAR, your alibi KAREN is coming to save you. Karen, your childhood friend that you haven't seen in ages. 'Yes, hunny, it's Karen who's taking up all my time. Don't be paranoid, no I don't have a lover. If you're nice, I'll introduce him to you. BOOK Karen TODAY.",
  price: 100,
  category: "Relationship",
  user: User.all.sample
},
{ title: "Fake person to do help you escape Le Wagon's livecode",
  description: "Can't be bothered to go to Le Wagon's livecode and scared the little drum is going to pick you? HAVE NO FEAR, Carl is your sick friend that just got an accident to the hospital! You need to visit him, he might die. Don't wait one second more, and BOOK CARL TODAY.",
  price: 200,
  category: "Education",
  user: User.all.sample
},
{ title: "Fake doctor to prevent you from going to an exam",
  description: "Having to pass your final exam but you spent the night with the pretty girl from the bar instead of revising (a bar the day before your exam ??) ? FEAR NOT! Dr.Smith is here to warn your school that you have a terminal disease and that you only have a few hours left to live - too bad you can't take that exam. BOOK DR.SMITH TODAY.",
  price: 150,
  category: "Education",
  user: User.all.sample
},
{ title: "Fake companion to present to your parents",
  description: "Your boyfriend is a hispter vegan tatooed bald KKK supporter and you're not sure that your parents will like him? FEAR NOT! PAUL is here! PAUL is tall, nice, polite, and a teacher! What else could could you parents want? BOOK PAUL TODAY.",
  price: 300,
  category: "Family",
  user: User.all.sample
},
{ title: "Fake grandma faking their death to get you out of work",
  description: "You're overload with work and you really don't want to go to that meeting tomorrow? FEAR NOT, your grandma PAULETTE will come to work to visit you and OH NO SHE JUST HAD A HEART ATTACK ON THE FLOOR. I guess the meeting will have to wait. BOOK PAULETTE TODAY.",
  price: 240,
  category: "Work",
  user: User.all.sample
},
{ title: "Fake priest faking your religious conversion to get married",
  description: "You're jewish but you want to get married to the girl of your dream? She's a catholic and her parents won't have you marry her if you don't covert? HAVE NO FEAR, Priest Jean will assure them that you are a good catholic now and thus can marry your beloved princess. BOOK PRIEST JEAN TODAY.",
  price: 440,
  category: "Relationship",
  user: User.all.sample
},
{ title: "Fake kid pretending to be your child to escape work",
  description: "You're overload with work and you really don't want to go to that meeting tomorrow? FEAR NOT, your adorable kid NINA needs you urgently - isn't she adorable? Kids before work, susan, your excel sheet can wait. BOOK NINA TODAY.",
  price: 200,
  category: "Work",
  user: User.all.sample
},
{ title: "Fake friend faking a nervous breakdown to escape a family weekend",
  description: "Your annual family approaches and no you don't want how your cousins are happy in their new marriages or hear one more time uncle Ted's stupid jokes. HAVE NO FEAR. JULIA is here to call you you, cry, scream and promise she will kill herself if you don't come take care of her right away (Julia is slightly dramatic). BOOK JULIA TODAY.",
  price: 500,
  category: "Family",
  user: User.all.sample
},
{ title: "Fake bridesmaids to ruin your wedding so you don't have to marry that loser",
  description: " You just realised que you rushed into Bernard's proposition to get married. You were scared (and propably drunk) when you said yes. Don't worry! ANA, CLAUDIA, JANET AND LILA to make you have an unforgettable wedding. Shame, now you are traumatised for life and don't want to get married anymore. Damn. BOOK THEM TODAY",
  price: 1500,
  category: "Relationship",
  user: User.all.sample
},
{ title: "Fake hippie pretending that this joint didn't belong to you",
  description: "Your parents saw a few joints in your room and you're now grounded for a year? Not to worry, your friend LEILA is going to pay you a visit and get back her stack of joints that you nicely kept for her. She will apologise to you and your parents for all the trouble caused. Really, they shouldn't blame you, it was all her fault. BOOK LEILA TODAY.",
  price: 120,
  category: "Family",
  user: User.all.sample
},
{ title: "Fake champion boxer pretending that he's the one who beat your face (and not your mistress's husband!)",
  description: " Your girlfriend doesn't understand why you came home all disfigured (How will she introduce you to her parents now ??). Well it's Bob, the champion boxer who's responsable. Oh yes you forgot to tell her that you started boxing lessons (because you're a badass, duh!). BOOK BOB TODAY.",
  price: 350,
  category: "Relationship",
  user: User.all.sample
},
{ title: "Fake kid pretending that you saved her life while you were actually in a suite with your lover",
  description: "Barry is finally being suspicious of why you are so busy all the time and this time its too much and he wants to know where you were.WELL, you were saving Annie, who almost got run over by a truck. Yes, barry, a truck. You had to take her to the hospital to make sure she was okay. You're a kind soul like that. BOOK ANNIE TODAY.",
  price: 400,
  category: "Relation",
  user: User.all.sample
},
{ title: "Fake grandpa pretending to take you to a tchatcha class",
  description: "You're always skipping this monday 9 AM class and your teacher is angry and threatens you to lower your grade. Well there is a simple explanation. Robert, your grandpa is taking you to his tchatcha class. You can never spend time with him because he's at the hospital but his only activity is this monday tchatcha class and not to go with him would break his heart. Your teacher surely can understand that. BOOK ROBERT TODAY.",
  price: 170,
  category: "Education",
  user: User.all.sample
},
{ title: "Fake woman pretending you have been selected to do a free world tour and must leave immediatly",
  description: "You wish you had a different life and want to say F*** to everything? Well Danaerys will take you to another world. Indeed, you've been selected by this program to do a world tour and must leave immediatly - how can you refuse such an oprtunity? It will allow you to start fresh. BOOK DAENERYS TODAY.",
  price: 590,
  category: "Work",
  user: User.all.sample
},
{ title: "Fake man pretending the tickets to Tomorrowland your wife saw were not yours",
  description: "Your wife doesn't understand why your voice is broken and she found tickets to Tomorrowland on your phone? (HUNNY - HOW COULD YOU?). Not to worry. DAN is here. Dan is that intern in your office and as a nice colleague you proposed to book his ticket so his parents wouldn't find that. BOOK DAN TODAY.",
  price: 720,
  category: "Work",
  user: User.all.sample
},
{ title: "Fake woman pretending that you saved her life while she drowned",
  description: " You don't want to go that business retreat with your colleagues? DAMN you missed the flight because you were such a hero! Yes you save the life of that women drowning in a pool and now she's between life or death so you have to stay to the hospital with her, as a good human being. BOOK TANIA TODAY.",
  price: 600,
  category: "Work",
  user: User.all.sample
}
]

images_url = [
  "woman5.jpg",
  "man1.jpg",
  "man2.jpg",
  "man10.jpg",
  "grandma1.jpg",
  "man5.jpg",
  "kid1.jpg",
  "woman8.jpg",
  "woman6.jpg",
  "woman9.jpg",
  "man8.jpg",
  "kid2.jpg",
  "grandpa1.jpg",
  "woman7.jpg",
  "man4.jpg",
  "woman4.jpg"
]

locations = [
  "16 Villa Gaudelet, Paris, France",
  "85 Rue Lecourbe, Paris, France",
  "3 Rue Erlanger, Paris, France",
  "63 Boulevard Saint-Michel, Paris, France",
  "117 Boulevard Jourdan, Paris, France",
  "3 Rue Rebeval, Paris, France",
  "109 Rue de Vaugirard, Paris, France",
  "55 Rue de l'Ouest, Paris, France",
  "3 Rue de la Chine, Paris, France",
  "99 Boulevard Voltaire, Paris, France",
  "3 Avenue du Maine, Paris, France",
  "45 Rue de Dunkerque, Paris, France",
  "23 Rue de Rivoli, Paris, France",
  "36 Boulevard Haussmann, Paris, France",
  "18 Avenue de l'Opéra, Paris, France",
  "25 Place de la Madeleine, Paris, France"

]

puts "associating images..."

alibi_attributes.each_with_index do |alibi, index|
  alibi = Alibi.new(alibi)
  alibi.photo = Rails.root.join("db/images/#{images_url[index]}").open
  alibi.save
end

Alibi.all.each_with_index do |alibi, index|
  puts "Add location #{locations[index]} to #{alibi.title}"
  alibi.update(location: locations[index])
end

puts "Done"
