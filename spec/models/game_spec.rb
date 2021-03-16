require 'rails_helper'

RSpec.describe Game, type: :model do

  before(:each) do
    @game = FactoryBot.create(:game)
  end

  it "has a valid factory" do
    expect(build(:game)).to be_valid
  end

  context "validations" do

    it "is valid with valid attributes" do
      expect(@game).to be_a(Game)
    end

    it "has a result" do
      expect(@game).to validate_presence_of(:result)
    end

  end

  context "associations" do

    it "has many moves" do
      expect(@game).to have_many(:moves)
    end

  end

end
