class Reward < ActiveRecord::Base
  has_many :house_rewards
  has_many :houses, through: :house_rewards
end
