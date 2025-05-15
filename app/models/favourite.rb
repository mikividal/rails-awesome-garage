class Favourite < ApplicationRecord
  belongs_to :car
  validates :card_id, uniqueness: true
end
