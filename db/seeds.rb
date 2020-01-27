Advice.destroy_all
Category.destroy_all
Comment.destroy_all
User.destroy_all

users = [
  {name: "Confucius"},
  {name: "Oprah Winfrey"},
  {name: "Socrates"},
  {name: "Audrey Hepburn"},
  {name: "Tony Robbins"},
  {name: "Jocko Willink"},
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
  {content: "Education is the key to unlocking the world, a passport to freedom.", user_id: 2},
  {content: "It is a shame for a man to grow old without seeing the beauty and strength of which his body is capable.", user_id: 3},
  {content: "The best thing to hold onto in life is each other.", user_id: 4},
  {content: "The secret to wealth is simple: Find a way to do more for others than anyone else does. Become more valuable. Do more. Give more. Be more. Serve more.", user_id: 5},
  {content: "The most fundamental and important truths at the heart of Extreme Ownership: there are no bad teams, only bad leaders.", user_id: 6}
]

advice_categories = [
  {category_id: 1, advice_id: 1},
  {category_id: 2, advice_id: 2},
  {category_id: 3, advice_id: 3},
  {category_id: 4, advice_id: 4},
  {category_id: 5, advice_id: 5},
  {category_id: 6, advice_id: 6}
]


users.each { |user| User.create(user) }
categories.each { |category| Category.create(category)}
advices.each { |advice| Advice.create(advice) }
advice_categories.each { |advice_category| AdviceCategory.create(advice_category) }
