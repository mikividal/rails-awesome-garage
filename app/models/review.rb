class Review < ApplicationRecord
  belongs_to :car
  validates :rating, numericality: { only_integer: true }
  validates :comment, length: { maximum: 150 }
end
