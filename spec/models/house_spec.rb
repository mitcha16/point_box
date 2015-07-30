require 'rails_helper'

describe "users model test" do

  it "has the correct attributes" do
    house = House.new(house_name: "Gryffindor")

    assert house.valid?
  end

  it "saves a new house" do
    House.create(house_name: "Gryffindor")

    expect(House.first.house_name).to eq("Gryffindor")
  end

  it "will not create a house without a name" do
    house = House.new()

    refute house.valid?
  end

  it "can have rewards" do
    house = House.create(house_name: "Ravenclaw", points: 80)

    expect(house.rewards).to eq([])
  end

  it "can have points" do
    house = House.create(house_name: "Ravenclaw", points: 80)

    expect(house.points).to eq(80)
  end

  it "will not create houses with the same name" do
    House.create(house_name: "Hufflepuff")
    House.create(house_name: "Hufflepuff")

    expect(House.all.count).to eq(1)
  end


end
