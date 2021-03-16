class Move < ApplicationRecord
  validates  :title, presence: true, inclusion: { in: %w(rock paper scissors) }
  belongs_to :game
  belongs_to :player
end
