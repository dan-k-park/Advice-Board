class AdviceCategory < ApplicationRecord
  belongs_to :advice
  belongs_to :category
end
