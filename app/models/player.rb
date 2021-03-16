class Player < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :moves
end
