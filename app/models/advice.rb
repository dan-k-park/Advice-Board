class Advice < ApplicationRecord
  has_many :advice_categories,dependent: :destroy
  has_many :categories, through: :advice_categories
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :content, presence: true, uniqueness: true
  validates :category_ids, presence: true
end
