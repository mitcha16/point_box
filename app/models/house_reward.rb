class HouseReward < ActiveRecord::Base
  belongs_to :house
  belongs_to :reward
end
