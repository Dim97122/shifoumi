require 'rails_helper'

RSpec.describe Move, type: :model do
  before(:each) do
    @move = FactoryBot.create(:move)
  end

  it "has a valid factory" do
    expect(build(:move)).to be_valid
  end

  context "validations" do

    it "is valid with valid attributes" do
      expect(@move).to be_a(Move)
    end

    it "has a title" do
      expect(@move).to validate_presence_of(:title)
    end

    it "has an authorized title" do
      expect(@move).to validate_inclusion_of(:title).in_array(["rock", "paper", "scissors"])
    end

  end

  context "associations" do

    it "belongs to a player" do
      expect(@move).to belong_to(:player)
    end

    it "belongs to a game" do
      expect(@move).to belong_to(:game)
    end

  end

end
