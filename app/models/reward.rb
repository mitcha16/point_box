class Reward < ActiveRecord::Base
  has_many :joins
  has_many :houses, through: :joins
end
