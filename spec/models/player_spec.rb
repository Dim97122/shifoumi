require 'rails_helper'

RSpec.describe Player, type: :model do

  before(:each) do
    @player = FactoryBot.create(:player)
  end

  it "has a valid factory" do
    expect(build(:player)).to be_valid
  end

  context "validations" do

    it "is valid with valid attributes" do
      expect(@player).to be_a(Player)
    end

    it "has a name" do
      expect(@player).to validate_presence_of(:name)
    end

    it "has a unique name" do
      expect(@player).to validate_uniqueness_of(:name)
    end

  end

  context "associations" do

    it "has many moves" do
      expect(@player).to have_many(:moves)
    end
  end
end
