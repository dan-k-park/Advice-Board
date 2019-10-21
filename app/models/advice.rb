class Advice < ApplicationRecord
  has_many :advice_categories
  has_many :categories, through: :advice_categories
  has_many :likes
  belongs_to :user

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.advice_categories.build(category: category)
    end
  end

end
