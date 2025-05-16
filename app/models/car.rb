class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy
  validates :brand, :model, :year, presence: true
  validates :year, numericality: true, length: { is: 4 }
end
