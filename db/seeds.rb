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
  {name: "Confucius"},
  {name: "Lou Holtz"},
  {name: "Katharine Whitehorn"},
  {name: "Lily Tomlin"},
  {name: "Oprah Winfrey"},
  {name: "Gandhi"},
  {name: "Socrates"},
  {name: "Mark Twain"},
  {name: "Audrey Hepburn"},
  {name: "Helen Keller"},
  {name: "Morrie Schwartz"},
  {name: "Tony Robbins"},
  {name: "David Bailey"},
  {name: "Warren Buffett"},
  {name: "Jocko Willink"},
  {name: "Richard Feynman"}
]

categories = [
  {name: "Work"},
  {name: "School"},
  {name: "Health"},
  {name: "Relationships"},
  {name: "Finance"},
  {name: "Miscellaneous"}
]

advices = [
  {content: "Choose a job you love, and you will never have to work a day in your life.", user_id: 1},
  {content: "I think everyone should experience defeat at least once during their career. You learn a lot from it.", user_id: 2},
  {content: "Find out what you like doing best and get someone to pay you for it.", user_id: 3},
  {content: "I like a teacher who gives you something to take home to think about besides homework.", user_id: 4},
  {content: "Education is the key to unlocking the world, a passport to freedom.", user_id: 5},
  {content: "It is health that is real wealth and not pieces of gold and silver.", user_id: 6},
  {content: "It is a shame for a man to grow old without seeing the beauty and strength of which his body is capable.", user_id: 7},
  {content: "Be careful about reading health books. You may die of a misprint.", user_id: 8},
  {content: "The best thing to hold onto in life is each other.", user_id: 9},
  {content: "The best and most beautiful things in this world cannot be seen or even heard, but must be felt with the heart.", user_id: 10},
  {content: "TThe most important thing in life is to learn how to give out love, and to let it come in.", user_id: 11},
  {content: "The secret to wealth is simple: Find a way to do more for others than anyone else does. Become more valuable. Do more. Give more. Be more. Serve more.", user_id: 12},
  {content: "To get rich, you have to be making money while you’re asleep.", user_id: 13},
  {content: "Risk comes from not knowing what you’re doing.", user_id: 14},
  {content: "The most fundamental and important truths at the heart of Extreme Ownership: there are no bad teams, only bad leaders.", user_id: 15},
  {content: "I think it's much more interesting to live not knowing than to have answers which might be wrong.", user_id: 16},
]

advice_categories = [
  {category_id: 1, advice_id: 1},
  {category_id: 1, advice_id: 2},
  {category_id: 1, advice_id: 3},
  {category_id: 2, advice_id: 4},
  {category_id: 2, advice_id: 5},
  {category_id: 3, advice_id: 6},
  {category_id: 3, advice_id: 7},
  {category_id: 3, advice_id: 8},
  {category_id: 4, advice_id: 9},
  {category_id: 4, advice_id: 10},
  {category_id: 4, advice_id: 11},
  {category_id: 5, advice_id: 12},
  {category_id: 5, advice_id: 13},
  {category_id: 5, advice_id: 14},
  {category_id: 6, advice_id: 15},
  {category_id: 6, advice_id: 16},
]


users.each { |user| User.create(user) }
categories.each { |category| Category.create(category)}
advices.each { |advice| Advice.create(advice) }
advice_categories.each { |advice_category| AdviceCategory.create(advice_category) }
