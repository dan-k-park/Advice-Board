# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Advice.destroy_all
Category.destroy_all
Comment.destroy_all
User.destroy_all

users = [
  {name: "Daniel"},
  {name: "Dan"},
  {name: "Cole"},
  {name: "Garret"}
]

categories = [
  {name: "Rails"},
  {name: "Sinatra"},
  {name: "Rack"},
  {name: "CRUD"},
  {name: "REST"},
  {name: "MVP"}
]

advices = [
  {content: "It's magic", user_id: 1},
  {content: "Good luck", user_id: 2},
  {content: "What was this again?", user_id: 3}
]

advice_categories = [
  {category_id: 1, advice_id: 1},
  {category_id: 2, advice_id: 2},
  {category_id: 3, advice_id: 3}
]

comments = [
  {content: "It really is magic", user_id: 2, advice_id: 1},
  {content: "It's nothing special", user_id: 3, advice_id: 1},
  {content: "I don't remember this either lol", user_id: 1, advice_id: 3},
  {content: "This was the worst thing ever", user_id: 1, advice_id: 2}
]

users.each { |user| User.create(user) }
categories.each { |category| Category.create(category)}
advices.each { |advice| Advice.create(advice) }
advice_categories.each { |advice_category| AdviceCategory.create(advice_category) }
comments.each { |comment| Comment.create(comment) }



# advice = [
#   {content: "It's a lot better than Sinatra", user_id: 2},
#   {content: "Good luck", user_id: 1},
#   {content: "I don't remember this at all", user_id: 3}
# ]

