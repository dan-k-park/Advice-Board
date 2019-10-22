class Advice < ApplicationRecord
  has_many :advice_categories
  has_many :categories, through: :advice_categories
  has_many :comments
  belongs_to :user

  validates :content, presence: true, uniqueness: true

end
