require 'rails_helper'

describe "rewards " do

  it "has many houses" do
    reward = Reward.create(name: "House Cup")

    expect(reward.houses).to eq([])
  end

end
