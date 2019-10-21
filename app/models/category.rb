class Category < ApplicationRecord
  has_many :advice_categories
  has_many :advices, through: :advice_categories
end
