class House < ActiveRecord::Base
  has_many :house_rewards
  has_many :rewards, through: :house_rewards
  validates :house_name, presence: true, uniqueness: true
end
