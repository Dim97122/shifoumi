class Game < ApplicationRecord
  validates :result, presence: true
  has_many :moves
end
