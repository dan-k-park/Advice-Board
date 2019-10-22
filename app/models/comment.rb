class Comment < ApplicationRecord
  belongs_to :advice
  belongs_to :user

  validates :content, :user_id, :advice_id, presence: true
end
