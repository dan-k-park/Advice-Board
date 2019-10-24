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
  {name: "Dan_P"},
  {name: "Dan_Z"},
  {name: "Cole"},
  {name: "Garret"},
  {name: "Andy"},
  {name: "Cha"}
]

categories = [
  {name: "Rails"},
  {name: "Sinatra"},
  {name: "Forms"},
  {name: "CRUD"},
  {name: "REST"},
  {name: "MVC"}
]

advices = [
  {content: "This was the best part of Mod 2", user_id: 1},
  {content: "Good for trains to ride on", user_id: 2},
  {content: "Don't be afraid of polymorphisms", user_id: 3},
  {content: "Don't make custom routes unless you're absolutely sure what you need isn't RESTful", user_id: 3},
  {content: "form_for > form_tag", user_id: 5},
  {content: "Private methods for params keep things DRY", user_id: 4},
  {content: "Don't forget to make instance variables", user_id: 6},
  {content: "Be careful about naming models after reserved words", user_id: 2}
]

advice_categories = [
  {category_id: 2, advice_id: 1},
  {category_id: 1, advice_id: 2},
  {category_id: 1, advice_id: 3},
  {category_id: 5, advice_id: 4},
  {category_id: 3, advice_id: 5},
  {category_id: 4, advice_id: 6},
  {category_id: 6, advice_id: 7},
  {category_id: 4, advice_id: 8}
]


users.each { |user| User.create(user) }
categories.each { |category| Category.create(category)}
advices.each { |advice| Advice.create(advice) }
advice_categories.each { |advice_category| AdviceCategory.create(advice_category) }
