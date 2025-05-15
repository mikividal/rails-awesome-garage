class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites
  validates :brand, :model, :year, presence: true
  validates :year, numericality: true, length: { is: 4 }
end
