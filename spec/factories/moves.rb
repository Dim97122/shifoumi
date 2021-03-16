FactoryBot.define do
  factory :move do
    title { "rock" }
    game { FactoryBot.create(:game) }
    player { FactoryBot.create(:player) }
  end
end
