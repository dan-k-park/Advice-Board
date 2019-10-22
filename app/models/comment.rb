class Comment < ApplicationRecord
  belongs_to :advice
  belongs_to :user

  validates :content, presence: true
end
