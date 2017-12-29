# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

designers = User.create(
  [
    {name: 'Coco Chanel', email: 'coco@chanel.com', password: 'cocochanel'},
    {name: 'Ralph Lauren', email: 'ralph@lauren.com', password: 'ralphlauren'},
    {name: 'Giorgio Armani', email: 'giorgio@armani.com', password: 'giorgioarmani'},
    {name: 'Christian Dior', email: 'christian@dior.com', password: 'christiandior'},
    {name: 'Gianni Versace', email: 'gianni@versace.com', password: 'gianniversace'}
  ]
)

fashion_shows = FashionShow.create(
  [
    {title: 'Angels in New York', location: 'New York', venue: 'Gotham Hall'},
    {title: 'Paris Fashion Week', location: 'Paris', venue: 'Carousel du Louvre'},
    {title: 'The London Look', location: 'London', venue: 'Oval Space'},
    {title: 'La Scala di Seta', location: 'Milan', venue: 'Palazzo Clerici'}
  ]
)

designs = Design.create(
  [
    {name: 'Cocktail Ensemble', style: 'tailored', fashion: 'cocktail', designer_id: 1, fashion_show_id: 2},
    {name: 'Little Black Dress', style: 'flouncy', fashion: 'casual', designer_id: 1, fashion_show_id: 3},
    {name: 'Evening Gown', style: 'flamenco', fashion: 'ballroom', designer_id: 2, fashion_show_id: 2},
    {name: 'Palazzo', style: 'flared', fashion: 'club', designer_id: 2, fashion_show_id: 4},
    {name: 'Italian Cut Suit', style: 'slim line', fashion: 'formal', designer_id: 3, fashion_show_id: 4},
    {name: 'French Cut Pants', style: 'jockey', fashion: 'sport', designer_id: 3, fashion_show_id: 3},
    {name: 'Wrap Dress', style: 'flouncy', fashion: 'haute couture', designer_id: 4, fashion_show_id: 1},
    {name: 'Buttoned Coat', style: 'draped', fashion: 'spring', designer_id: 4, fashion_show_id: 3},
    {name: 'Stripe Silk Shirt', style: 'a-line', fashion: 'casual', designer_id: 5, fashion_show_id: 1},
    {name: 'Red Siren Dress', style: 'bodycon', fashion: 'haute couture', designer_id: 5, fashion_show_id: 2}
  ]
)
